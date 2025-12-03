@interface TLTransliteratorInitParameters
- (BOOL)isEqual:(id)equal;
- (TLTransliteratorInitParameters)initWithLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TLTransliteratorInitParameters

- (TLTransliteratorInitParameters)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TLTransliteratorInitParameters;
  v5 = [(TLTransliteratorInitParameters *)&v9 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    locale = v5->_locale;
    v5->_locale = v6;

    *&v5->_useLanguageModel = 257;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TLTransliteratorInitParameters allocWithZone:zone];
  locale = [(TLTransliteratorInitParameters *)self locale];
  v6 = [(TLTransliteratorInitParameters *)v4 initWithLocale:locale];

  modelURL = [(TLTransliteratorInitParameters *)self modelURL];
  [(TLTransliteratorInitParameters *)v6 setModelURL:modelURL];

  [(TLTransliteratorInitParameters *)v6 setUseLanguageModel:[(TLTransliteratorInitParameters *)self useLanguageModel]];
  [(TLTransliteratorInitParameters *)v6 setUseSeq2SeqModel:[(TLTransliteratorInitParameters *)self useSeq2SeqModel]];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TLMutableTransliteratorInitParameters alloc];
  locale = [(TLTransliteratorInitParameters *)self locale];
  v6 = [(TLTransliteratorInitParameters *)v4 initWithLocale:locale];

  modelURL = [(TLTransliteratorInitParameters *)self modelURL];
  [(TLTransliteratorInitParameters *)v6 setModelURL:modelURL];

  [(TLTransliteratorInitParameters *)v6 setUseLanguageModel:[(TLTransliteratorInitParameters *)self useLanguageModel]];
  [(TLTransliteratorInitParameters *)v6 setUseSeq2SeqModel:[(TLTransliteratorInitParameters *)self useSeq2SeqModel]];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
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

  locale = [(TLTransliteratorInitParameters *)self locale];
  locale2 = [v8 locale];
  if (![locale isEqual:locale2])
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  modelURL = [(TLTransliteratorInitParameters *)self modelURL];
  if (modelURL)
  {
    v21 = modelURL;
    v10 = 0;
    v11 = 1;
LABEL_10:
    [(TLTransliteratorInitParameters *)self modelURL];
    goto LABEL_11;
  }

  modelURL2 = [v8 modelURL];
  v11 = 1;
  if (!modelURL2)
  {
    LOBYTE(v15) = 1;
    goto LABEL_21;
  }

  v21 = 0;
  v10 = 1;
  [(TLTransliteratorInitParameters *)self modelURL];
  v12 = LABEL_11:;
  modelURL3 = [v8 modelURL];
  if ([v12 isEqual:modelURL3] && (v14 = -[TLTransliteratorInitParameters useLanguageModel](self, "useLanguageModel"), v14 == objc_msgSend(v8, "useLanguageModel")))
  {
    useSeq2SeqModel = [(TLTransliteratorInitParameters *)self useSeq2SeqModel];
    v15 = useSeq2SeqModel ^ [v8 useSeq2SeqModel] ^ 1;
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
  locale = [(TLTransliteratorInitParameters *)self locale];
  v4 = [locale hash];

  modelURL = [(TLTransliteratorInitParameters *)self modelURL];
  v6 = [modelURL hash] ^ v4;

  v7 = v6 ^ [(TLTransliteratorInitParameters *)self useLanguageModel];
  return v7 ^ [(TLTransliteratorInitParameters *)self useSeq2SeqModel];
}

@end