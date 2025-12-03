@interface SKDPipelineQueryBuilder
+ (id)queryForItemsFromBundles:(id)bundles inverse:(BOOL)inverse;
+ (id)queryForItemsFromProtectionClasses:(id)classes inverse:(BOOL)inverse;
+ (id)queryForItemsNeedingProcessingByPipelineWithName:(id)name inverse:(BOOL)inverse;
+ (id)queryForItemsProcessedByPipelineWithName:(id)name inverse:(BOOL)inverse;
+ (id)queryForValidItems;
@end

@implementation SKDPipelineQueryBuilder

+ (id)queryForValidItems
{
  v15 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v15 beginGroup];
  withAttribute = [beginGroup withAttribute];
  v17 = (withAttribute)[2](withAttribute, @"*", @"=", @"*");
  v16 = [v17 and];
  withAttribute2 = [v16 withAttribute];
  v14 = (withAttribute2)[2](withAttribute2, @"_kMDItemUserActivityType", @"!=", @"*");
  v3 = [v14 and];
  beginGroup2 = [v3 beginGroup];
  withAttribute3 = [beginGroup2 withAttribute];
  v6 = (withAttribute3)[2](withAttribute3, @"_kMDItemIsZombie", @"!=", @"*");
  v7 = [v6 or];
  withAttribute4 = [v7 withAttribute];
  v9 = (withAttribute4)[2](withAttribute4, @"_kMDItemIsZombie", @"!=", &unk_2846E7A70);
  endGroup = [v9 endGroup];
  v10EndGroup = [endGroup endGroup];

  build = [v10EndGroup build];

  return build;
}

+ (id)queryForItemsFromBundles:(id)bundles inverse:(BOOL)inverse
{
  inverseCopy = inverse;
  bundlesCopy = bundles;
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  v7 = v6;
  if (inverseCopy)
  {
    withFieldMatch2 = [(SKGQueryStringBuilder *)v6 not];
    withFieldMatch = [withFieldMatch2 withFieldMatch];
    v10 = (*(withFieldMatch + 16))(withFieldMatch, @"_kMDItemBundleID", bundlesCopy);

    bundlesCopy = v7;
    v7 = withFieldMatch;
  }

  else
  {
    withFieldMatch2 = [(SKGQueryStringBuilder *)v6 withFieldMatch];
    v10 = (withFieldMatch2)[2](withFieldMatch2, @"_kMDItemBundleID", bundlesCopy);
  }

  build = [v10 build];

  return build;
}

+ (id)queryForItemsFromProtectionClasses:(id)classes inverse:(BOOL)inverse
{
  inverseCopy = inverse;
  classesCopy = classes;
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  v7 = v6;
  if (inverseCopy)
  {
    withFieldMatch2 = [(SKGQueryStringBuilder *)v6 not];
    withFieldMatch = [withFieldMatch2 withFieldMatch];
    v10 = (*(withFieldMatch + 16))(withFieldMatch, @"_kMDItemProtectionClass", classesCopy);

    classesCopy = v7;
    v7 = withFieldMatch;
  }

  else
  {
    withFieldMatch2 = [(SKGQueryStringBuilder *)v6 withFieldMatch];
    v10 = (withFieldMatch2)[2](withFieldMatch2, @"_kMDItemProtectionClass", classesCopy);
  }

  build = [v10 build];

  return build;
}

+ (id)queryForItemsProcessedByPipelineWithName:(id)name inverse:(BOOL)inverse
{
  inverseCopy = inverse;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@Version", name];
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  withAttribute = [(SKGQueryStringBuilder *)v6 withAttribute];
  v8 = withAttribute;
  if (inverseCopy)
  {
    v9 = @"!=";
  }

  else
  {
    v9 = @"=";
  }

  v10 = (*(withAttribute + 16))(withAttribute, name, v9, @"*");

  build = [v10 build];

  return build;
}

+ (id)queryForItemsNeedingProcessingByPipelineWithName:(id)name inverse:(BOOL)inverse
{
  inverseCopy = inverse;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemNeeds%@", name];
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  withAttribute = [(SKGQueryStringBuilder *)v6 withAttribute];
  v8 = withAttribute;
  if (inverseCopy)
  {
    v9 = @"!=";
  }

  else
  {
    v9 = @"=";
  }

  v10 = (*(withAttribute + 16))(withAttribute, name, v9, @"*");

  build = [v10 build];

  return build;
}

@end