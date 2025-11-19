@interface SKDPipelineQueryBuilder
+ (id)queryForItemsFromBundles:(id)a3 inverse:(BOOL)a4;
+ (id)queryForItemsFromProtectionClasses:(id)a3 inverse:(BOOL)a4;
+ (id)queryForItemsNeedingProcessingByPipelineWithName:(id)a3 inverse:(BOOL)a4;
+ (id)queryForItemsProcessedByPipelineWithName:(id)a3 inverse:(BOOL)a4;
+ (id)queryForValidItems;
@end

@implementation SKDPipelineQueryBuilder

+ (id)queryForValidItems
{
  v15 = objc_alloc_init(SKGQueryStringBuilder);
  v19 = [(SKGQueryStringBuilder *)v15 beginGroup];
  v18 = [v19 withAttribute];
  v17 = (v18)[2](v18, @"*", @"=", @"*");
  v16 = [v17 and];
  v2 = [v16 withAttribute];
  v14 = (v2)[2](v2, @"_kMDItemUserActivityType", @"!=", @"*");
  v3 = [v14 and];
  v4 = [v3 beginGroup];
  v5 = [v4 withAttribute];
  v6 = (v5)[2](v5, @"_kMDItemIsZombie", @"!=", @"*");
  v7 = [v6 or];
  v8 = [v7 withAttribute];
  v9 = (v8)[2](v8, @"_kMDItemIsZombie", @"!=", &unk_2846E7A70);
  v10 = [v9 endGroup];
  v11 = [v10 endGroup];

  v12 = [v11 build];

  return v12;
}

+ (id)queryForItemsFromBundles:(id)a3 inverse:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  v7 = v6;
  if (v4)
  {
    v8 = [(SKGQueryStringBuilder *)v6 not];
    v9 = [v8 withFieldMatch];
    v10 = (*(v9 + 16))(v9, @"_kMDItemBundleID", v5);

    v5 = v7;
    v7 = v9;
  }

  else
  {
    v8 = [(SKGQueryStringBuilder *)v6 withFieldMatch];
    v10 = (v8)[2](v8, @"_kMDItemBundleID", v5);
  }

  v11 = [v10 build];

  return v11;
}

+ (id)queryForItemsFromProtectionClasses:(id)a3 inverse:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  v7 = v6;
  if (v4)
  {
    v8 = [(SKGQueryStringBuilder *)v6 not];
    v9 = [v8 withFieldMatch];
    v10 = (*(v9 + 16))(v9, @"_kMDItemProtectionClass", v5);

    v5 = v7;
    v7 = v9;
  }

  else
  {
    v8 = [(SKGQueryStringBuilder *)v6 withFieldMatch];
    v10 = (v8)[2](v8, @"_kMDItemProtectionClass", v5);
  }

  v11 = [v10 build];

  return v11;
}

+ (id)queryForItemsProcessedByPipelineWithName:(id)a3 inverse:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"kMDItem%@Version", a3];
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  v7 = [(SKGQueryStringBuilder *)v6 withAttribute];
  v8 = v7;
  if (v4)
  {
    v9 = @"!=";
  }

  else
  {
    v9 = @"=";
  }

  v10 = (*(v7 + 16))(v7, v5, v9, @"*");

  v11 = [v10 build];

  return v11;
}

+ (id)queryForItemsNeedingProcessingByPipelineWithName:(id)a3 inverse:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemNeeds%@", a3];
  v6 = objc_alloc_init(SKGQueryStringBuilder);
  v7 = [(SKGQueryStringBuilder *)v6 withAttribute];
  v8 = v7;
  if (v4)
  {
    v9 = @"!=";
  }

  else
  {
    v9 = @"=";
  }

  v10 = (*(v7 + 16))(v7, v5, v9, @"*");

  v11 = [v10 build];

  return v11;
}

@end