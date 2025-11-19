@interface VUIPlaybackTabInfo
- (BOOL)isEqual:(id)a3;
- (VUIPlaybackTabInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)insertTabDetails:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation VUIPlaybackTabInfo

- (VUIPlaybackTabInfo)initWithDictionary:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = VUIPlaybackTabInfo;
  v5 = [(VUIPlaybackTabInfo *)&v41 init];
  if (v5)
  {
    v36 = [MEMORY[0x1E695DF70] array];
    v6 = [v4 vui_stringForKey:@"canonicalId"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v5->_canonicalId, v8);

    v9 = [v4 vui_stringForKey:@"adamId"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v5->_adamId, v11);

    v12 = [v4 vui_dictionaryForKey:@"multiView"];
    v13 = v12;
    if (v12 && [v12 vui_BOOLForKey:@"isMultiViewAllowed" defaultValue:0] && !+[VUIGroupActivitiesManagerObjC isSessionActive](VUIGroupActivitiesManagerObjC, "isSessionActive"))
    {
      v14 = [[VUIPlaybackTabDetails alloc] initWithDictionary:v13];
      multiviewTabInfo = v5->_multiviewTabInfo;
      v5->_multiviewTabInfo = v14;
    }

    v34 = v4;
    v16 = [v4 vui_arrayForKey:{@"tabs", v13}];
    v5->_isInfoTabAllowed = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [v21 vui_BOOLForKey:@"isMarkerShelf" defaultValue:0];
          v23 = [v21 vui_stringForKey:@"tabId"];
          v24 = [v23 isEqualToString:@"uts.marker.Spotlight"];

          if (!v22)
          {
            goto LABEL_21;
          }

          v25 = [v21 vui_stringForKey:@"markerType"];
          v26 = [v25 isEqualToString:@"Info"];

          if (v26)
          {
            v5->_isInfoTabAllowed = 1;
            continue;
          }

          if (v24)
          {
LABEL_21:
            v27 = [[VUIPlaybackTabDetails alloc] initWithDictionary:v21];
            [v36 addObject:v27];
            if ([(VUIPlaybackTabDetails *)v27 isSelected]&& !v5->_focusedTabIdOnFirstDisplay)
            {
              v28 = [(VUIPlaybackTabDetails *)v27 tabId];
            }

            else
            {
              v28 = @"uts.marker.Spotlight";
              if (!v24)
              {
                goto LABEL_27;
              }
            }

            focusedTabIdOnFirstDisplay = v5->_focusedTabIdOnFirstDisplay;
            v5->_focusedTabIdOnFirstDisplay = &v28->isa;

LABEL_27:
            continue;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v18);
    }

    v30 = [v36 copy];
    tabDetails = v5->_tabDetails;
    v5->_tabDetails = v30;

    v4 = v34;
  }

  return v5;
}

- (void)insertTabDetails:(id)a3 atIndex:(unint64_t)a4
{
  tabDetails = self->_tabDetails;
  v7 = a3;
  v10 = [(NSArray *)tabDetails mutableCopy];
  [v10 insertObject:v7 atIndex:a4];

  v8 = [v10 copy];
  v9 = self->_tabDetails;
  self->_tabDetails = v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VUIPlaybackTabInfo);
  v5 = [(NSString *)self->_canonicalId copy];
  canonicalId = v4->_canonicalId;
  v4->_canonicalId = v5;

  v7 = [(NSString *)self->_adamId copy];
  adamId = v4->_adamId;
  v4->_adamId = v7;

  v4->_isInfoTabAllowed = self->_isInfoTabAllowed;
  objc_storeStrong(&v4->_focusedTabIdOnFirstDisplay, self->_focusedTabIdOnFirstDisplay);
  v9 = [(VUIPlaybackTabDetails *)self->_multiviewTabInfo copy];
  multiviewTabInfo = v4->_multiviewTabInfo;
  v4->_multiviewTabInfo = v9;

  v11 = [(NSArray *)self->_tabDetails copy];
  tabDetails = v4->_tabDetails;
  v4->_tabDetails = v11;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIPlaybackTabInfo *)self canonicalId];
      v7 = [(VUIPlaybackTabInfo *)v5 canonicalId];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(VUIPlaybackTabInfo *)self adamId];
        v9 = [(VUIPlaybackTabInfo *)v5 adamId];
        if ([v8 isEqualToString:v9] && (v10 = -[VUIPlaybackTabInfo isInfoTabAllowed](self, "isInfoTabAllowed"), v10 == -[VUIPlaybackTabInfo isInfoTabAllowed](v5, "isInfoTabAllowed")))
        {
          v12 = [(VUIPlaybackTabInfo *)self multiviewTabInfo];
          v13 = [(VUIPlaybackTabInfo *)v5 multiviewTabInfo];
          if ([v12 isEqual:v13])
          {
            v16 = [(VUIPlaybackTabInfo *)self tabDetails];
            v14 = [(VUIPlaybackTabInfo *)v5 tabDetails];
            v11 = [v16 isEqualToArray:v14];
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end