@interface TLTransliteratorInitParameters
- (BOOL)isEqual:(id)a3;
- (TLTransliteratorInitParameters)initWithLocale:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TLTransliteratorInitParameters

- (TLTransliteratorInitParameters)initWithLocale:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLTransliteratorInitParameters;
  v5 = [(TLTransliteratorInitParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    locale = v5->_locale;
    v5->_locale = v6;

    *&v5->_useLanguageModel = 257;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TLTransliteratorInitParameters allocWithZone:a3];
  v5 = [(TLTransliteratorInitParameters *)self locale];
  v6 = [(TLTransliteratorInitParameters *)v4 initWithLocale:v5];

  v7 = [(TLTransliteratorInitParameters *)self modelURL];
  [(TLTransliteratorInitParameters *)v6 setModelURL:v7];

  [(TLTransliteratorInitParameters *)v6 setUseLanguageModel:[(TLTransliteratorInitParameters *)self useLanguageModel]];
  [(TLTransliteratorInitParameters *)v6 setUseSeq2SeqModel:[(TLTransliteratorInitParameters *)self useSeq2SeqModel]];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TLMutableTransliteratorInitParameters alloc];
  v5 = [(TLTransliteratorInitParameters *)self locale];
  v6 = [(TLTransliteratorInitParameters *)v4 initWithLocale:v5];

  v7 = [(TLTransliteratorInitParameters *)self modelURL];
  [(TLTransliteratorInitParameters *)v6 setModelURL:v7];

  [(TLTransliteratorInitParameters *)v6 setUseLanguageModel:[(TLTransliteratorInitParameters *)self useLanguageModel]];
  [(TLTransliteratorInitParameters *)v6 setUseSeq2SeqModel:[(TLTransliteratorInitParameters *)self useSeq2SeqModel]];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (!v8)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v3 = [(TLTransliteratorInitParameters *)self locale];
  v4 = [v8 locale];
  if (![v3 isEqual:v4])
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [(TLTransliteratorInitParameters *)self modelURL];
  if (v9)
  {
    v21 = v9;
    v10 = 0;
    v11 = 1;
LABEL_10:
    [(TLTransliteratorInitParameters *)self modelURL];
    goto LABEL_11;
  }

  v18 = [v8 modelURL];
  v11 = 1;
  if (!v18)
  {
    LOBYTE(v15) = 1;
    goto LABEL_21;
  }

  v21 = 0;
  v10 = 1;
  [(TLTransliteratorInitParameters *)self modelURL];
  v12 = LABEL_11:;
  v13 = [v8 modelURL];
  if ([v12 isEqual:v13] && (v14 = -[TLTransliteratorInitParameters useLanguageModel](self, "useLanguageModel"), v14 == objc_msgSend(v8, "useLanguageModel")))
  {
    v16 = [(TLTransliteratorInitParameters *)self useSeq2SeqModel];
    v15 = v16 ^ [v8 useSeq2SeqModel] ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v11)
  {
LABEL_19:
  }

LABEL_20:
  if (v8)
  {
LABEL_21:
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(TLTransliteratorInitParameters *)self locale];
  v4 = [v3 hash];

  v5 = [(TLTransliteratorInitParameters *)self modelURL];
  v6 = [v5 hash] ^ v4;

  v7 = v6 ^ [(TLTransliteratorInitParameters *)self useLanguageModel];
  return v7 ^ [(TLTransliteratorInitParameters *)self useSeq2SeqModel];
}

@end