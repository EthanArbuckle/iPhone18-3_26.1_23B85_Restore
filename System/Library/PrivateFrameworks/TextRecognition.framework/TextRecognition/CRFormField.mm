@interface CRFormField
- (BOOL)hasMoved;
- (BOOL)isEqual:(id)a3;
- (CRFormField)initWithQuad:(id)a3 type:(unint64_t)a4 source:(unint64_t)a5 value:(id)a6 contentType:(unint64_t)a7 maxCharacterCount:(unint64_t)a8;
@end

@implementation CRFormField

- (CRFormField)initWithQuad:(id)a3 type:(unint64_t)a4 source:(unint64_t)a5 value:(id)a6 contentType:(unint64_t)a7 maxCharacterCount:(unint64_t)a8
{
  v15 = a3;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = CRFormField;
  v17 = [(CRFormField *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_boundingQuad, a3);
    originalQuad = v18->_originalQuad;
    v18->_originalQuad = 0;

    v18->_fieldType = a4;
    v18->_fieldSource = a5;
    objc_storeStrong(&v18->_fieldValue, a6);
    v18->_maxCharacterCount = a8;
    v18->_textContentType = a7;
    originalField = v18->_originalField;
    v18->_suggestedLineHeight = 0.0;
    v18->_originalField = 0;
    *&v18->_hasBoundedWidth = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CRFormField *)self boundingQuad];
      v7 = [(CRFormField *)v5 boundingQuad];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[CRFormField originalQuad](self, "originalQuad"), v9 = objc_claimAutoreleasedReturnValue(), -[CRFormField originalQuad](v5, "originalQuad"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11) && (v12 = -[CRFormField fieldType](self, "fieldType"), v12 == -[CRFormField fieldType](v5, "fieldType")) && (v13 = -[CRFormField fieldSource](self, "fieldSource"), v13 == -[CRFormField fieldSource](v5, "fieldSource")) && (v14 = -[CRFormField textContentType](self, "textContentType"), v14 == -[CRFormField textContentType](v5, "textContentType")) && (v15 = -[CRFormField maxCharacterCount](self, "maxCharacterCount"), v15 == -[CRFormField maxCharacterCount](v5, "maxCharacterCount")) && (-[CRFormField suggestedLineHeight](self, "suggestedLineHeight"), v17 = v16, -[CRFormField suggestedLineHeight](v5, "suggestedLineHeight"), v17 == v18))
      {
        v21 = [(CRFormField *)self fieldValue];
        v22 = [(CRFormField *)v5 fieldValue];
        v19 = [v21 isEqualToString:v22];
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
  v3 = [(CRFormField *)self originalQuad];
  if (v3)
  {
    v4 = [(CRFormField *)self originalQuad];
    v5 = [(CRFormField *)self boundingQuad];
    v6 = [v4 isEqual:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end