@interface GQPStyleReader
- (BOOL)beginProperty:(const char *)property;
- (GQPStyleReader)initWithStyleType:(int)type;
- (id)createStyle;
- (int)beginReadingFromReader:(_xmlTextReader *)reader processor:(id)processor;
- (int)doneReading:(id)reading;
- (void)dealloc;
- (void)doneProperty;
- (void)handleBoolValue:(BOOL)value;
- (void)handleDoubleValue:(double)value;
- (void)handleFloatValue:(float)value;
- (void)handleIntValue:(int)value;
- (void)handleObject:(id)object;
@end

@implementation GQPStyleReader

- (GQPStyleReader)initWithStyleType:(int)type
{
  v7.receiver = self;
  v7.super_class = GQPStyleReader;
  v4 = [(GQPStyleReader *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mStyleType = type;
    v4->mEntries = CFArrayCreateMutable(0, 0, &unk_84B58);
    v5->mCurrentProperty = 0;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->mEntries);

  mIdentifier = self->mIdentifier;
  if (mIdentifier)
  {
    free(mIdentifier);
  }

  mUid = self->mUid;
  if (mUid)
  {
    free(mUid);
  }

  mParentIdentifier = self->mParentIdentifier;
  if (mParentIdentifier)
  {
    free(mParentIdentifier);
  }

  v6.receiver = self;
  v6.super_class = GQPStyleReader;
  [(GQPStyleReader *)&v6 dealloc];
}

- (int)beginReadingFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  v7 = [objc_msgSend(processor "documentState")];
  self->mStylesheet = v7;
  v8 = v7;
  AttributeNs = xmlTextReaderGetAttributeNs(reader, off_9D308, *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    self->mIdentifier = AttributeNs;
  }

  self->mParentIdentifier = xmlTextReaderGetAttributeNs(reader, off_9D310, *(qword_A35E8 + 16));
  self->mUid = xmlTextReaderGetAttributeNs(reader, off_9D3D8, *(qword_A35E0 + 16));
  if (![objc_msgSend(objc_msgSend(processor "documentState")])
  {

    sub_37B34(qword_A2A18, reader, processor);
  }

  [objc_msgSend(processor "documentState")];
  v10 = objc_alloc_init(GQDSStyle);
  self->mStyle = v10;
  mIdentifier = self->mIdentifier;
  if (mIdentifier)
  {
    self->mStyleIsIdentified = 1;
    mParentIdentifier = self->mParentIdentifier;
    if (mParentIdentifier)
    {
      self->mStyleIdentiferEqualsParentIdentifier = xmlStrEqual(mIdentifier, mParentIdentifier) != 0;
      mStyle = self->mStyle;
      mIdentifier = self->mIdentifier;
    }

    else
    {
      mStyle = v10;
    }

    [(GQDSStylesheet *)self->mStylesheet addStyle:mStyle withOwnedIdentifier:mIdentifier];
    self->mIdentifier = 0;
  }

  if (self->mUid)
  {
    if ([(GQDSStylesheet *)self->mStylesheet addStyle:self->mStyle withOwnedXmlUid:?])
    {
      result = 1;
    }

    else
    {
      result = 3;
    }
  }

  else
  {
    result = 1;
  }

  self->mUid = 0;
  return result;
}

- (int)doneReading:(id)reading
{
  createStyle = [(GQPStyleReader *)self createStyle];

  [objc_msgSend(reading "documentState")];
  return 1;
}

- (void)handleObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectCopy = 0;
  }

  else
  {
    objectCopy = object;
  }

  v6 = sub_F62C(self->mCurrentProperty, objectCopy);
  CFArrayAppendValue(self->mEntries, v6);
  self->mCurrentProperty = 0;
}

- (id)createStyle
{
  if (self->mParentIdentifier && !self->mStyleIdentiferEqualsParentIdentifier)
  {
    v3 = [(GQDSStylesheet *)self->mStylesheet styleWithIdentifier:?];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_F724(self->mEntries);
  [(GQDSStyle *)self->mStyle setParent:v3];
  [(GQDSStyle *)self->mStyle setPropertyMap:v4];
  if (!v3)
  {
    mParentIdentifier = self->mParentIdentifier;
    if (mParentIdentifier)
    {
      [(GQDSStylesheet *)self->mStylesheet addStyle:self->mStyle needingParentResolution:mParentIdentifier resolveInParent:self->mStyleIdentiferEqualsParentIdentifier];
    }
  }

  return self->mStyle;
}

- (BOOL)beginProperty:(const char *)property
{
  v4 = [GQDSStyleProperties propertyFromString:property];
  if (v4)
  {
    self->mCurrentProperty = v4;
  }

  return v4 != 0;
}

- (void)doneProperty
{
  if (self->mCurrentProperty)
  {
    v3 = [GQDSStyle defaultMapForStyleType:self->mStyleType];
    if (v3)
    {
      v4 = sub_FDA4(v3, self->mCurrentProperty);
      if (v4)
      {
        CFArrayAppendValue(self->mEntries, v4);
      }
    }

    self->mCurrentProperty = 0;
  }
}

- (void)handleBoolValue:(BOOL)value
{
  v4 = sub_F51C(self->mCurrentProperty, value);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

- (void)handleIntValue:(int)value
{
  v4 = sub_F51C(self->mCurrentProperty, value);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

- (void)handleFloatValue:(float)value
{
  v4 = sub_F578(self->mCurrentProperty, value);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

- (void)handleDoubleValue:(double)value
{
  v4 = sub_F5D0(self->mCurrentProperty, value);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

@end