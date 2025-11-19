@interface CRFormTextFieldOutputRegion
- (BOOL)isEqual:(id)a3;
- (CRFormTextFieldOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (CRFormTextFieldOutputRegion)initWithQuad:(id)a3 labelRegion:(id)a4 subFields:(id)a5 contentType:(unint64_t)a6 source:(unint64_t)a7;
- (CRFormTextFieldOutputRegion)initWithQuad:(id)a3 labelRegion:(id)a4 subFields:(id)a5 contentType:(unint64_t)a6 source:(unint64_t)a7 hasBoundedWidth:(BOOL)a8 hasBoundedHeight:(BOOL)a9;
- (NSString)textContentTypeString;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRFormTextFieldOutputRegion

- (CRFormTextFieldOutputRegion)initWithQuad:(id)a3 labelRegion:(id)a4 subFields:(id)a5 contentType:(unint64_t)a6 source:(unint64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  LOBYTE(v17) = 0;
  v15 = [[CRFormTextFieldOutputRegion alloc] initWithQuad:v14 labelRegion:v13 subFields:v12 contentType:a6 source:a7 hasBoundedWidth:0 hasBoundedHeight:v17];

  return v15;
}

- (CRFormTextFieldOutputRegion)initWithQuad:(id)a3 labelRegion:(id)a4 subFields:(id)a5 contentType:(unint64_t)a6 source:(unint64_t)a7 hasBoundedWidth:(BOOL)a8 hasBoundedHeight:(BOOL)a9
{
  v9 = a8;
  v14.receiver = self;
  v14.super_class = CRFormTextFieldOutputRegion;
  v11 = [(CRFormFieldOutputRegion *)&v14 initWithQuad:a3 labelRegion:a4 subFields:a5 source:a7];
  v12 = v11;
  if (v11)
  {
    v11->_maxCharacterCount = -1;
    v11->_textContentType = a6;
    v11->_suggestedLineHeight = 0.0;
    [(CRFormFieldOutputRegion *)v11 setHasBoundedWidth:v9];
    [(CRFormFieldOutputRegion *)v12 setHasBoundedHeight:a9];
    v12->_autofillNewContextStart = 1;
  }

  return v12;
}

- (NSString)textContentTypeString
{
  v2 = [(CRFormTextFieldOutputRegion *)self textContentType];

  return [CRFormContentTypeUtilities stringFromContentType:v2];
}

- (CRFormTextFieldOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = CRFormTextFieldOutputRegion;
  v9 = [(CRFormFieldOutputRegion *)&v14 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    v10 = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
    if (v10)
    {
      v11 = v10;
      v9->_maxCharacterCount = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
      v9->_textContentType = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
      if (v11 != 1)
      {
        [CRCodingUtilities cgFloatFromEncodingData:v8 offset:a5];
        v9->_suggestedLineHeight = v12;
        if (v11 >= 3)
        {
          v9->_autofillNewContextStart = [CRCodingUtilities BOOLFromEncodingData:v8 offset:a5];
          if (v11 != 3)
          {
            [(CRFormFieldOutputRegion *)v9 setHasBoundedWidth:[CRCodingUtilities BOOLFromEncodingData:v8 offset:a5]];
            [(CRFormFieldOutputRegion *)v9 setHasBoundedHeight:[CRCodingUtilities BOOLFromEncodingData:v8 offset:a5]];
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
  v4 = [(CRFormFieldOutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  [CRCodingUtilities appendUInteger:4 toData:v5];
  [CRCodingUtilities appendUInteger:self->_maxCharacterCount toData:v5];
  [CRCodingUtilities appendUInteger:self->_textContentType toData:v5];
  [CRCodingUtilities appendCGFloat:v5 toData:self->_suggestedLineHeight];
  [CRCodingUtilities appendBool:self->_autofillNewContextStart toData:v5];
  [CRCodingUtilities appendBool:[(CRFormFieldOutputRegion *)self hasBoundedWidth] toData:v5];
  [CRCodingUtilities appendBool:[(CRFormFieldOutputRegion *)self hasBoundedHeight] toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = CRFormTextFieldOutputRegion;
  v7 = [(CRFormFieldOutputRegion *)&v9 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  [v7 setMaxCharacterCount:{-[CRFormTextFieldOutputRegion maxCharacterCount](self, "maxCharacterCount")}];
  [v7 setTextContentType:{-[CRFormTextFieldOutputRegion textContentType](self, "textContentType")}];
  [(CRFormTextFieldOutputRegion *)self suggestedLineHeight];
  [v7 setSuggestedLineHeight:?];
  [v7 setAutofillNewContextStart:{-[CRFormTextFieldOutputRegion autofillNewContextStart](self, "autofillNewContextStart")}];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRFormTextFieldOutputRegion;
  if ([(CRFormFieldOutputRegion *)&v14 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(CRFormTextFieldOutputRegion *)self textContentType];
    if (v6 == [v5 textContentType] && (v7 = -[CRFormTextFieldOutputRegion maxCharacterCount](self, "maxCharacterCount"), v7 == objc_msgSend(v5, "maxCharacterCount")) && (-[CRFormTextFieldOutputRegion suggestedLineHeight](self, "suggestedLineHeight"), v9 = v8, objc_msgSend(v5, "suggestedLineHeight"), v9 == v10))
    {
      v13 = [(CRFormTextFieldOutputRegion *)self autofillNewContextStart];
      v11 = v13 ^ [v5 autofillNewContextStart] ^ 1;
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