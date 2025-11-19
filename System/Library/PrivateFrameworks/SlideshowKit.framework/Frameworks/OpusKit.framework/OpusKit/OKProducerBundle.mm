@interface OKProducerBundle
- (OKProducerBundle)init;
- (OKProducerBundle)initWithURL:(id)a3 bundleType:(unint64_t)a4;
- (double)version;
- (id)URLForResource:(id)a3 withExtension:(id)a4;
- (id)bundle;
- (id)identifier;
- (id)infoDictionary;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (void)dealloc;
@end

@implementation OKProducerBundle

- (OKProducerBundle)init
{
  v3.receiver = self;
  v3.super_class = OKProducerBundle;
  result = [(OKProducerBundle *)&v3 init];
  if (result)
  {
    *&result->_infoDictionary = 0u;
    *&result->_url = 0u;
  }

  return result;
}

- (OKProducerBundle)initWithURL:(id)a3 bundleType:(unint64_t)a4
{
  v6 = [(OKProducerBundle *)self init];
  if (v6)
  {
    v6->_url = [a3 copy];
    v6->_type = a4;
  }

  return v6;
}

- (void)dealloc
{
  url = self->_url;
  if (url)
  {

    self->_url = 0;
  }

  bundle = self->_bundle;
  if (bundle)
  {

    self->_bundle = 0;
  }

  infoDictionary = self->_infoDictionary;
  if (infoDictionary)
  {

    self->_infoDictionary = 0;
  }

  bundleExtension = self->_bundleExtension;
  if (bundleExtension)
  {

    self->_bundleExtension = 0;
  }

  v7.receiver = self;
  v7.super_class = OKProducerBundle;
  [(OKProducerBundle *)&v7 dealloc];
}

- (id)bundle
{
  objc_sync_enter(self);
  bundle = self->_bundle;
  if (!bundle)
  {
    bundle = [MEMORY[0x277CCA8D8] bundleWithURL:self->_url];
    self->_bundle = bundle;
  }

  objc_sync_exit(self);
  return bundle;
}

- (id)infoDictionary
{
  objc_sync_enter(self);
  infoDictionary = self->_infoDictionary;
  if (!infoDictionary)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 addEntriesFromDictionary:{objc_msgSend(-[OKProducerBundle bundle](self, "bundle"), "infoDictionary")}];
    [v4 addEntriesFromDictionary:{objc_msgSend(-[OKProducerBundle bundle](self, "bundle"), "localizedInfoDictionary")}];
    infoDictionary = v4;
    self->_infoDictionary = infoDictionary;
  }

  objc_sync_exit(self);
  return infoDictionary;
}

- (id)identifier
{
  v2 = [(OKProducerBundle *)self infoDictionary];

  return [v2 objectForKey:@"OKProducerIdentifier"];
}

- (double)version
{
  v2 = [-[OKProducerBundle infoDictionary](self "infoDictionary")];

  [v2 doubleValue];
  return result;
}

- (id)URLForResource:(id)a3 withExtension:(id)a4
{
  v6 = [(OKProducerBundle *)self bundle];

  return [v6 URLForResource:a3 withExtension:a4];
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v8 = [(OKProducerBundle *)self bundle];

  return [v8 localizedStringForKey:a3 value:a4 table:a5];
}

@end