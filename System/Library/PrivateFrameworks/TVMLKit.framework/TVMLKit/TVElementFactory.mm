@interface TVElementFactory
+ (Class)classForElementType:(unint64_t)a3;
+ (void)_registerDefaultElements;
+ (void)initialize;
+ (void)registerClass:(Class)a3 forElementName:(id)a4 elementType:(unint64_t)a5 dependent:(BOOL)a6;
+ (void)registerViewElementClass:(Class)a3 forElementName:(id)a4;
@end

@implementation TVElementFactory

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    +[TVElementFactory _registerDefaultElements];
  }
}

+ (void)_registerDefaultElements
{
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"alertTemplate" elementType:61 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"descriptiveAlertTemplate" elementType:62 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"loadingTemplate" elementType:66 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"modalPageTemplate" elementType:67 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"productTemplate" elementType:69 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"searchTemplate" elementType:71 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"stackTemplate" elementType:74 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"listTemplate" elementType:65 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"decorationImage" elementType:16 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"activityIndicator" elementType:1 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"asset" elementType:2 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"background" elementType:4 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"badge" elementType:5 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"button" elementType:6 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"buttonLockup" elementType:7 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"card" elementType:8 dependent:0];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"carousel" elementType:9 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"collectionList" elementType:10 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"description" elementType:55 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"banner" elementType:12 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"uberBanner" elementType:12 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"footer" elementType:13 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"header" elementType:15 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"heroImg" elementType:16 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"img" elementType:16 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"info" elementType:18 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"infoList" elementType:19 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"infoTable" elementType:20 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"listItemLockup" elementType:23 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"lockup" elementType:24 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"menuBarTemplate" elementType:28 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"menuItem" elementType:29 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"monogram" elementType:30 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"monogramLockup" elementType:24 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"navigationItem" elementType:31 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"offerButton" elementType:32 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"ordinal" elementType:33 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"organizer" elementType:34 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"overlay" elementType:35 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"playlist" elementType:36 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"productInfo" elementType:38 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"progressBar" elementType:39 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"ratingBadge" elementType:41 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"relatedContent" elementType:43 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"ratingCard" elementType:8 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"reviewCard" elementType:8 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"row" elementType:44 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"seasonBadge" elementType:48 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"segmentBar" elementType:50 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"segmentBarHeader" elementType:15 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"segmentBarItem" elementType:51 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"separator" elementType:52 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"subtitle" elementType:55 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"textBadge" elementType:56 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"text" elementType:55 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"title" elementType:55 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"titleImage" elementType:16 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"stack" elementType:54 dependent:1];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"video" elementType:60 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"prototypes" elementType:40 dependent:1];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"grid" elementType:14 dependent:0];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"list" elementType:22 dependent:0];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"menuBar" elementType:27 dependent:0];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"section" elementType:49 dependent:1];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"searchField" elementType:45 dependent:0];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"shelf" elementType:53 dependent:0];
  [TVElementFactory registerIKClass:objc_opt_class() forElementName:@"splitTemplate" elementType:73 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"movieOrganizer" elementType:34 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"tvOrganizer" elementType:34 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"upNextCard" elementType:8 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"buttonText" elementType:6 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"buttonRound" elementType:6 dependent:0];
  [TVElementFactory registerClass:objc_opt_class() forElementName:@"favoriteSeparator" elementType:52 dependent:0];
  v2 = objc_opt_class();

  [TVElementFactory registerIKClass:v2 forElementName:@"favoriteList" elementType:22 dependent:0];
}

+ (void)registerViewElementClass:(Class)a3 forElementName:(id)a4
{
  ++registerViewElementClass_forElementName__sElementType;
  v5 = a4;
  [objc_opt_class() registerClass:a3 forElementName:v5 elementType:registerViewElementClass_forElementName__sElementType dependent:0];
}

+ (void)registerClass:(Class)a3 forElementName:(id)a4 elementType:(unint64_t)a5 dependent:(BOOL)a6
{
  v13 = a6;
  v14 = a4;
  v8 = sClassMap;
  if (!sClassMap)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = sClassMap;
    sClassMap = v9;

    v8 = sClassMap;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v8 setObject:a3 forKey:v11];

  if (a3)
  {
    while (a3 != objc_opt_class() && a3 != objc_opt_class() && a3 != objc_opt_class() && a3 != objc_opt_class() && a3 != objc_opt_class() && a3 != objc_opt_class())
    {
      a3 = [(objc_class *)a3 superclass];
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    v12 = objc_opt_class();
    if (v12)
    {
      [objc_opt_class() registerIKClass:v12 forElementName:v14 elementType:a5 dependent:v13];
    }
  }

LABEL_14:
}

+ (Class)classForElementType:(unint64_t)a3
{
  v3 = sClassMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [v3 objectForKey:v4];

  return v5;
}

@end