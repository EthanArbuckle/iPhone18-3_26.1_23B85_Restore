@interface TSWPImageBulletProvider
+ (id)sharedInstance;
- (NSArray)predefinedImages;
- (id)dataForImageBullet:(id)a3 withContext:(id)a4;
- (id)p_pathToPredefinedImages;
- (id)p_predefinedImageNames;
@end

@implementation TSWPImageBulletProvider

+ (id)sharedInstance
{
  if (+[TSWPImageBulletProvider sharedInstance]::predicate != -1)
  {
    +[TSWPImageBulletProvider sharedInstance];
  }

  return +[TSWPImageBulletProvider sharedInstance]::sharedInstance;
}

TSWPImageBulletProvider *__41__TSWPImageBulletProvider_sharedInstance__block_invoke()
{
  result = objc_alloc_init(TSWPImageBulletProvider);
  +[TSWPImageBulletProvider sharedInstance]::sharedInstance = result;
  return result;
}

- (NSArray)predefinedImages
{
  v23 = *MEMORY[0x277D85DE8];
  result = &self->_images->super;
  if (!result)
  {
    v4 = [(TSWPImageBulletProvider *)self p_predefinedImageNames];
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      self->_images = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
      self->_filenames = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
      v7 = [(TSWPImageBulletProvider *)self p_pathToPredefinedImages];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v4);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            v13 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:{objc_msgSend(v7, "stringByAppendingPathComponent:", v12)}];
            if (v13)
            {
              v14 = v13;
              v15 = [v12 copy];
              [(NSMutableArray *)self->_images addObject:v14];
              [(NSMutableArray *)self->_filenames addObject:v15];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }
    }

    result = &self->_images->super;
    if (!result)
    {
      v16 = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPImageBulletProvider predefinedImages]"];
      [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPImageBulletProvider.mm"), 66, @"Empty predefined bullet image array."}];
      result = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_images = result;
    }
  }

  return result;
}

- (id)dataForImageBullet:(id)a3 withContext:(id)a4
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
LABEL_10:
    result = [TSPData dataFromURL:v7 context:a4];
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    goto LABEL_9;
  }

  if (![(NSArray *)[(TSWPImageBulletProvider *)self predefinedImages] count])
  {
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v9 = [(NSMutableArray *)self->_images indexOfObject:a3];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPImageBulletProvider dataForImageBullet:withContext:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPImageBulletProvider.mm"), 104, @"Unknown image - TSPData requires path to image file"}];
LABEL_7:
    v9 = 0;
  }

  v8 = [-[TSWPImageBulletProvider p_pathToPredefinedImages](self "p_pathToPredefinedImages")];
LABEL_9:
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:0];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:

  return +[TSWPListStyle defaultMissingBulletImage];
}

- (id)p_pathToPredefinedImages
{
  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];

  return [v2 stringByAppendingPathComponent:@"ImageBullets"];
}

- (id)p_predefinedImageNames
{
  v2 = [-[TSWPImageBulletProvider p_pathToPredefinedImages](self "p_pathToPredefinedImages")];
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:0];

  return [v3 arrayWithContentsOfURL:v4];
}

@end