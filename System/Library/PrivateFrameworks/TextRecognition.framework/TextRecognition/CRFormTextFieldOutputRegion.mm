@interface CRFormTextFieldOutputRegion
- (BOOL)isEqual:(id)equal;
- (CRFormTextFieldOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRFormTextFieldOutputRegion)initWithQuad:(id)quad labelRegion:(id)region subFields:(id)fields contentType:(unint64_t)type source:(unint64_t)source;
- (CRFormTextFieldOutputRegion)initWithQuad:(id)quad labelRegion:(id)region subFields:(id)fields contentType:(unint64_t)type source:(unint64_t)source hasBoundedWidth:(BOOL)width hasBoundedHeight:(BOOL)height;
- (NSString)textContentTypeString;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRFormTextFieldOutputRegion

- (CRFormTextFieldOutputRegion)initWithQuad:(id)quad labelRegion:(id)region subFields:(id)fields contentType:(unint64_t)type source:(unint64_t)source
{
  fieldsCopy = fields;
  regionCopy = region;
  quadCopy = quad;
  LOBYTE(v17) = 0;
  v15 = [[CRFormTextFieldOutputRegion alloc] initWithQuad:quadCopy labelRegion:regionCopy subFields:fieldsCopy contentType:type source:source hasBoundedWidth:0 hasBoundedHeight:v17];

  return v15;
}

- (CRFormTextFieldOutputRegion)initWithQuad:(id)quad labelRegion:(id)region subFields:(id)fields contentType:(unint64_t)type source:(unint64_t)source hasBoundedWidth:(BOOL)width hasBoundedHeight:(BOOL)height
{
  widthCopy = width;
  v14.receiver = self;
  v14.super_class = CRFormTextFieldOutputRegion;
  v11 = [(CRFormFieldOutputRegion *)&v14 initWithQuad:quad labelRegion:region subFields:fields source:source];
  v12 = v11;
  if (v11)
  {
    v11->_maxCharacterCount = -1;
    v11->_textContentType = type;
    v11->_suggestedLineHeight = 0.0;
    [(CRFormFieldOutputRegion *)v11 setHasBoundedWidth:widthCopy];
    [(CRFormFieldOutputRegion *)v12 setHasBoundedHeight:height];
    v12->_autofillNewContextStart = 1;
  }

  return v12;
}

- (NSString)textContentTypeString
{
  textContentType = [(CRFormTextFieldOutputRegion *)self textContentType];

  return [CRFormContentTypeUtilities stringFromContentType:textContentType];
}

- (CRFormTextFieldOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = CRFormTextFieldOutputRegion;
  v9 = [(CRFormFieldOutputRegion *)&v14 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    v10 = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
    if (v10)
    {
      v11 = v10;
      v9->_maxCharacterCount = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
      v9->_textContentType = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
      if (v11 != 1)
      {
        [CRCodingUtilities cgFloatFromEncodingData:representationCopy offset:offset];
        v9->_suggestedLineHeight = v12;
        if (v11 >= 3)
        {
          v9->_autofillNewContextStart = [CRCodingUtilities BOOLFromEncodingData:representationCopy offset:offset];
          if (v11 != 3)
          {
            [(CRFormFieldOutputRegion *)v9 setHasBoundedWidth:[CRCodingUtilities BOOLFromEncodingData:representationCopy offset:offset]];
            [(CRFormFieldOutputRegion *)v9 setHasBoundedHeight:[CRCodingUtilities BOOLFromEncodingData:representationCopy offset:offset]];
          }
        }
      }
    }
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v7.receiver = self;
  v7.super_class = CRFormTextFieldOutputRegion;
  crCodableDataRepresentation = [(CRFormFieldOutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendUInteger:4 toData:v5];
  [CRCodingUtilities appendUInteger:self->_maxCharacterCount toData:v5];
  [CRCodingUtilities appendUInteger:self->_textContentType toData:v5];
  [CRCodingUtilities appendCGFloat:v5 toData:self->_suggestedLineHeight];
  [CRCodingUtilities appendBool:self->_autofillNewContextStart toData:v5];
  [CRCodingUtilities appendBool:[(CRFormFieldOutputRegion *)self hasBoundedWidth] toData:v5];
  [CRCodingUtilities appendBool:[(CRFormFieldOutputRegion *)self hasBoundedHeight] toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v9.receiver = self;
  v9.super_class = CRFormTextFieldOutputRegion;
  v7 = [(CRFormFieldOutputRegion *)&v9 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  [v7 setMaxCharacterCount:{-[CRFormTextFieldOutputRegion maxCharacterCount](self, "maxCharacterCount")}];
  [v7 setTextContentType:{-[CRFormTextFieldOutputRegion textContentType](self, "textContentType")}];
  [(CRFormTextFieldOutputRegion *)self suggestedLineHeight];
  [v7 setSuggestedLineHeight:?];
  [v7 setAutofillNewContextStart:{-[CRFormTextFieldOutputRegion autofillNewContextStart](self, "autofillNewContextStart")}];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = CRFormTextFieldOutputRegion;
  if ([(CRFormFieldOutputRegion *)&v14 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    textContentType = [(CRFormTextFieldOutputRegion *)self textContentType];
    if (textContentType == [v5 textContentType] && (v7 = -[CRFormTextFieldOutputRegion maxCharacterCount](self, "maxCharacterCount"), v7 == objc_msgSend(v5, "maxCharacterCount")) && (-[CRFormTextFieldOutputRegion suggestedLineHeight](self, "suggestedLineHeight"), v9 = v8, objc_msgSend(v5, "suggestedLineHeight"), v9 == v10))
    {
      autofillNewContextStart = [(CRFormTextFieldOutputRegion *)self autofillNewContextStart];
      v11 = autofillNewContextStart ^ [v5 autofillNewContextStart] ^ 1;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end