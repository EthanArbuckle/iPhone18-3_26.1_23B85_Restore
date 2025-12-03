@interface CRFormField
- (BOOL)hasMoved;
- (BOOL)isEqual:(id)equal;
- (CRFormField)initWithQuad:(id)quad type:(unint64_t)type source:(unint64_t)source value:(id)value contentType:(unint64_t)contentType maxCharacterCount:(unint64_t)count;
@end

@implementation CRFormField

- (CRFormField)initWithQuad:(id)quad type:(unint64_t)type source:(unint64_t)source value:(id)value contentType:(unint64_t)contentType maxCharacterCount:(unint64_t)count
{
  quadCopy = quad;
  valueCopy = value;
  v22.receiver = self;
  v22.super_class = CRFormField;
  v17 = [(CRFormField *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_boundingQuad, quad);
    originalQuad = v18->_originalQuad;
    v18->_originalQuad = 0;

    v18->_fieldType = type;
    v18->_fieldSource = source;
    objc_storeStrong(&v18->_fieldValue, value);
    v18->_maxCharacterCount = count;
    v18->_textContentType = contentType;
    originalField = v18->_originalField;
    v18->_suggestedLineHeight = 0.0;
    v18->_originalField = 0;
    *&v18->_hasBoundedWidth = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      boundingQuad = [(CRFormField *)self boundingQuad];
      boundingQuad2 = [(CRFormField *)v5 boundingQuad];
      v8 = [boundingQuad isEqual:boundingQuad2];

      if (v8 && (-[CRFormField originalQuad](self, "originalQuad"), v9 = objc_claimAutoreleasedReturnValue(), -[CRFormField originalQuad](v5, "originalQuad"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11) && (v12 = -[CRFormField fieldType](self, "fieldType"), v12 == -[CRFormField fieldType](v5, "fieldType")) && (v13 = -[CRFormField fieldSource](self, "fieldSource"), v13 == -[CRFormField fieldSource](v5, "fieldSource")) && (v14 = -[CRFormField textContentType](self, "textContentType"), v14 == -[CRFormField textContentType](v5, "textContentType")) && (v15 = -[CRFormField maxCharacterCount](self, "maxCharacterCount"), v15 == -[CRFormField maxCharacterCount](v5, "maxCharacterCount")) && (-[CRFormField suggestedLineHeight](self, "suggestedLineHeight"), v17 = v16, -[CRFormField suggestedLineHeight](v5, "suggestedLineHeight"), v17 == v18))
      {
        fieldValue = [(CRFormField *)self fieldValue];
        fieldValue2 = [(CRFormField *)v5 fieldValue];
        v19 = [fieldValue isEqualToString:fieldValue2];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (BOOL)hasMoved
{
  originalQuad = [(CRFormField *)self originalQuad];
  if (originalQuad)
  {
    originalQuad2 = [(CRFormField *)self originalQuad];
    boundingQuad = [(CRFormField *)self boundingQuad];
    v6 = [originalQuad2 isEqual:boundingQuad] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end