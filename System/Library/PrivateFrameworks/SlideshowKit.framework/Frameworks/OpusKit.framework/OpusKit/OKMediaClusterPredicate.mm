@interface OKMediaClusterPredicate
+ (id)nameForCategory:(unint64_t)a3;
- (OKMediaClusterPredicate)init;
- (float)efficiencyForItems:(id)a3;
- (id)evaluateItems:(id)a3 progressBlock:(id)a4;
- (id)title;
- (void)dealloc;
@end

@implementation OKMediaClusterPredicate

- (OKMediaClusterPredicate)init
{
  v3.receiver = self;
  v3.super_class = OKMediaClusterPredicate;
  result = [(OKMediaClusterPredicate *)&v3 init];
  if (result)
  {
    result->_uniqueID = 0;
    result->_category = 0;
  }

  return result;
}

- (void)dealloc
{
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {

    self->_uniqueID = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMediaClusterPredicate;
  [(OKMediaClusterPredicate *)&v4 dealloc];
}

+ (id)nameForCategory:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0uLL:
        v5 = @"Date";
        goto LABEL_17;
      case 1uLL:
        v5 = @"Location";
        goto LABEL_17;
      case 2uLL:
        v5 = @"Region of Interests";
        goto LABEL_17;
    }

LABEL_13:
    v5 = @"Unknown";
    goto LABEL_17;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v5 = @"Social";
      goto LABEL_17;
    }

    if (a3 == 6)
    {
      v5 = @"Events";
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a3 == 3)
  {
    v5 = @"Media Properties";
  }

  else
  {
    v5 = @"Custom";
  }

LABEL_17:

  return [v4 localizedStringForKey:v5 value:v5 table:@"Localizable"];
}

- (id)title
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaClusterPredicate.m" line:119 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v5, NSStringFromSelector(a2)];
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v6 localizedStringForKey:@"Unknown" value:@"Unknown" table:@"Localizable"];
}

- (id)evaluateItems:(id)a3 progressBlock:(id)a4
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v5 = MEMORY[0x277D627B8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaClusterPredicate.m" line:131 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v7, NSStringFromSelector(a2)];
  }

  return 0;
}

- (float)efficiencyForItems:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Clusters/OKMediaClusterPredicate.m" line:138 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0.0;
}

@end