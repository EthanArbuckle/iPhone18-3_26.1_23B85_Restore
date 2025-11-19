@interface WFImgArrayCache
+ (id)imgArrayCacheWithArray:(id)a3;
- (WFImgArrayCache)initWithArray:(id)a3;
- (void)dealloc;
@end

@implementation WFImgArrayCache

+ (id)imgArrayCacheWithArray:(id)a3
{
  v3 = [[a1 alloc] initWithArray:a3];

  return v3;
}

- (WFImgArrayCache)initWithArray:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = WFImgArrayCache;
  v3 = [(WFImgArrayCache *)&v24 init];
  v4 = v3;
  if (v3)
  {
    v3->numberOfUnknownSizedImages = 0;
    v5 = objc_opt_new();
    v4->numberOfKnownImagePixels = 0;
    v4->imageAlternativeDescriptions = v5;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = __WFDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [WFImgArrayCache initWithArray:v16];
            }

            goto LABEL_27;
          }

          v11 = [v10 area];
          if (v11 == kWFImgDimensionUnknown)
          {
            p_numberOfUnknownSizedImages = &v4->numberOfUnknownSizedImages;
          }

          else
          {
            p_numberOfUnknownSizedImages = &v4->numberOfKnownImagePixels;
          }

          if (v11 == kWFImgDimensionUnknown)
          {
            v13 = 1;
          }

          else
          {
            v13 = v11;
          }

          *p_numberOfUnknownSizedImages += v13;
          v14 = [v10 alt];
          v15 = [v10 title];
          if (v14 && ([v14 isEqualToString:&stru_28826CB10] & 1) == 0)
          {
            [(NSMutableString *)v4->imageAlternativeDescriptions appendFormat:@"%@\n", v14];
          }

          if (v15 && ([v15 isEqualToString:&stru_28826CB10] & 1) == 0 && (!v14 || (objc_msgSend(v15, "isEqualToString:", v14) & 1) == 0))
          {
            [(NSMutableString *)v4->imageAlternativeDescriptions appendFormat:@"%@\n", v15];
          }
        }

        v7 = [a3 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  imageAlternativeDescriptions = self->imageAlternativeDescriptions;
  if (imageAlternativeDescriptions)
  {
  }

  v4.receiver = self;
  v4.super_class = WFImgArrayCache;
  [(WFImgArrayCache *)&v4 dealloc];
}

- (void)initWithArray:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[WFImgArrayCache initWithArray:]";
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "**** Warning %{public}s array doesn't contain WFImg objects", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end