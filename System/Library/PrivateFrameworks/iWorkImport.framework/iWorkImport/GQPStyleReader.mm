@interface GQPStyleReader
- (BOOL)beginProperty:(const char *)a3;
- (GQPStyleReader)initWithStyleType:(int)a3;
- (id)createStyle;
- (int)beginReadingFromReader:(_xmlTextReader *)a3 processor:(id)a4;
- (int)doneReading:(id)a3;
- (void)dealloc;
- (void)doneProperty;
- (void)handleBoolValue:(BOOL)a3;
- (void)handleDoubleValue:(double)a3;
- (void)handleFloatValue:(float)a3;
- (void)handleIntValue:(int)a3;
- (void)handleObject:(id)a3;
@end

@implementation GQPStyleReader

- (GQPStyleReader)initWithStyleType:(int)a3
{
  v7.receiver = self;
  v7.super_class = GQPStyleReader;
  v4 = [(GQPStyleReader *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mStyleType = a3;
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

- (int)beginReadingFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  v7 = [objc_msgSend(a4 "documentState")];
  self->mStylesheet = v7;
  v8 = v7;
  AttributeNs = xmlTextReaderGetAttributeNs(a3, off_9D308, *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    self->mIdentifier = AttributeNs;
  }

  self->mParentIdentifier = xmlTextReaderGetAttributeNs(a3, off_9D310, *(qword_A35E8 + 16));
  self->mUid = xmlTextReaderGetAttributeNs(a3, off_9D3D8, *(qword_A35E0 + 16));
  if (![objc_msgSend(objc_msgSend(a4 "documentState")])
  {

    sub_37B34(qword_A2A18, a3, a4);
  }

  [objc_msgSend(a4 "documentState")];
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

- (int)doneReading:(id)a3
{
  v4 = [(GQPStyleReader *)self createStyle];

  [objc_msgSend(a3 "documentState")];
  return 1;
}

- (void)handleObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v6 = sub_F62C(self->mCurrentProperty, v5);
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

- (BOOL)beginProperty:(const char *)a3
{
  v4 = [GQDSStyleProperties propertyFromString:a3];
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

- (void)handleBoolValue:(BOOL)a3
{
  v4 = sub_F51C(self->mCurrentProperty, a3);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

- (void)handleIntValue:(int)a3
{
  v4 = sub_F51C(self->mCurrentProperty, a3);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

- (void)handleFloatValue:(float)a3
{
  v4 = sub_F578(self->mCurrentProperty, a3);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

- (void)handleDoubleValue:(double)a3
{
  v4 = sub_F5D0(self->mCurrentProperty, a3);
  CFArrayAppendValue(self->mEntries, v4);
  self->mCurrentProperty = 0;
}

@end