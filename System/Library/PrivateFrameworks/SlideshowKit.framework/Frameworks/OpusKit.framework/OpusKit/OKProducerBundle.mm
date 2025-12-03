@interface OKProducerBundle
- (OKProducerBundle)init;
- (OKProducerBundle)initWithURL:(id)l bundleType:(unint64_t)type;
- (double)version;
- (id)URLForResource:(id)resource withExtension:(id)extension;
- (id)bundle;
- (id)identifier;
- (id)infoDictionary;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
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

- (OKProducerBundle)initWithURL:(id)l bundleType:(unint64_t)type
{
  v6 = [(OKProducerBundle *)self init];
  if (v6)
  {
    v6->_url = [l copy];
    v6->_type = type;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary addEntriesFromDictionary:{objc_msgSend(-[OKProducerBundle bundle](self, "bundle"), "infoDictionary")}];
    [dictionary addEntriesFromDictionary:{objc_msgSend(-[OKProducerBundle bundle](self, "bundle"), "localizedInfoDictionary")}];
    infoDictionary = dictionary;
    self->_infoDictionary = infoDictionary;
  }

  objc_sync_exit(self);
  return infoDictionary;
}

- (id)identifier
{
  infoDictionary = [(OKProducerBundle *)self infoDictionary];

  return [infoDictionary objectForKey:@"OKProducerIdentifier"];
}

- (double)version
{
  v2 = [-[OKProducerBundle infoDictionary](self "infoDictionary")];

  [v2 doubleValue];
  return result;
}

- (id)URLForResource:(id)resource withExtension:(id)extension
{
  bundle = [(OKProducerBundle *)self bundle];

  return [bundle URLForResource:resource withExtension:extension];
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  bundle = [(OKProducerBundle *)self bundle];

  return [bundle localizedStringForKey:key value:value table:table];
}

@end