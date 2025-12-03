@interface SKDPipelineSetDescription
- (SKDPipelineSetDescription)initWithName:(id)name version:(id)version;
- (void)setExcludedAttributes:(id)attributes;
- (void)setExcludedBundles:(id)bundles;
- (void)setExcludedProtectionClasses:(id)classes;
- (void)setProcessedAttributes:(id)attributes;
- (void)setRequiredAttributes:(id)attributes;
- (void)setRequiredBundles:(id)bundles;
- (void)setRequiredProtectionClasses:(id)classes;
@end

@implementation SKDPipelineSetDescription

- (SKDPipelineSetDescription)initWithName:(id)name version:(id)version
{
  nameCopy = name;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = SKDPipelineSetDescription;
  v8 = [(SKDPipelineSetDescription *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_version, version);
    [(SKDPipelineSetDescription *)v8 setEnabled:1];
  }

  return v8;
}

- (void)setRequiredBundles:(id)bundles
{
  v4 = [bundles copy];
  requiredBundles = self->_requiredBundles;
  self->_requiredBundles = v4;
}

- (void)setExcludedBundles:(id)bundles
{
  v4 = [bundles copy];
  excludedBundles = self->_excludedBundles;
  self->_excludedBundles = v4;
}

- (void)setRequiredProtectionClasses:(id)classes
{
  v4 = [classes copy];
  requiredProtectionClasses = self->_requiredProtectionClasses;
  self->_requiredProtectionClasses = v4;
}

- (void)setExcludedProtectionClasses:(id)classes
{
  v4 = [classes copy];
  excludedProtectionClasses = self->_excludedProtectionClasses;
  self->_excludedProtectionClasses = v4;
}

- (void)setRequiredAttributes:(id)attributes
{
  v4 = [attributes copy];
  requiredAttributes = self->_requiredAttributes;
  self->_requiredAttributes = v4;
}

- (void)setExcludedAttributes:(id)attributes
{
  v4 = [attributes copy];
  excludedAttributes = self->_excludedAttributes;
  self->_excludedAttributes = v4;
}

- (void)setProcessedAttributes:(id)attributes
{
  v4 = [attributes copy];
  processedAttributes = self->_processedAttributes;
  self->_processedAttributes = v4;
}

@end