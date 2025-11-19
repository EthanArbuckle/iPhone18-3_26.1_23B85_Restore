@interface SKDPipelineSetDescription
- (SKDPipelineSetDescription)initWithName:(id)a3 version:(id)a4;
- (void)setExcludedAttributes:(id)a3;
- (void)setExcludedBundles:(id)a3;
- (void)setExcludedProtectionClasses:(id)a3;
- (void)setProcessedAttributes:(id)a3;
- (void)setRequiredAttributes:(id)a3;
- (void)setRequiredBundles:(id)a3;
- (void)setRequiredProtectionClasses:(id)a3;
@end

@implementation SKDPipelineSetDescription

- (SKDPipelineSetDescription)initWithName:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SKDPipelineSetDescription;
  v8 = [(SKDPipelineSetDescription *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_version, a4);
    [(SKDPipelineSetDescription *)v8 setEnabled:1];
  }

  return v8;
}

- (void)setRequiredBundles:(id)a3
{
  v4 = [a3 copy];
  requiredBundles = self->_requiredBundles;
  self->_requiredBundles = v4;
}

- (void)setExcludedBundles:(id)a3
{
  v4 = [a3 copy];
  excludedBundles = self->_excludedBundles;
  self->_excludedBundles = v4;
}

- (void)setRequiredProtectionClasses:(id)a3
{
  v4 = [a3 copy];
  requiredProtectionClasses = self->_requiredProtectionClasses;
  self->_requiredProtectionClasses = v4;
}

- (void)setExcludedProtectionClasses:(id)a3
{
  v4 = [a3 copy];
  excludedProtectionClasses = self->_excludedProtectionClasses;
  self->_excludedProtectionClasses = v4;
}

- (void)setRequiredAttributes:(id)a3
{
  v4 = [a3 copy];
  requiredAttributes = self->_requiredAttributes;
  self->_requiredAttributes = v4;
}

- (void)setExcludedAttributes:(id)a3
{
  v4 = [a3 copy];
  excludedAttributes = self->_excludedAttributes;
  self->_excludedAttributes = v4;
}

- (void)setProcessedAttributes:(id)a3
{
  v4 = [a3 copy];
  processedAttributes = self->_processedAttributes;
  self->_processedAttributes = v4;
}

@end