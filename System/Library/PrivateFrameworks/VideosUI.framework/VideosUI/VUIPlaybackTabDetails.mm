@interface VUIPlaybackTabDetails
- (BOOL)isEqual:(id)equal;
- (VUIPlaybackTabDetails)initWithDictionary:(id)dictionary;
- (VUIPlaybackTabDetails)initWithTabId:(id)id andTitle:(id)title isSelected:(BOOL)selected;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUIPlaybackTabDetails

- (VUIPlaybackTabDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = VUIPlaybackTabDetails;
  v5 = [(VUIPlaybackTabDetails *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy vui_stringForKey:@"title"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v5->_title, v8);

    v9 = [dictionaryCopy vui_stringForKey:@"tabId"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v5->_tabId, v11);

    v5->_isSelected = [dictionaryCopy vui_BOOLForKey:@"isSelected" defaultValue:0];
  }

  return v5;
}

- (VUIPlaybackTabDetails)initWithTabId:(id)id andTitle:(id)title isSelected:(BOOL)selected
{
  idCopy = id;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = VUIPlaybackTabDetails;
  v11 = [(VUIPlaybackTabDetails *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v12->_tabId, id);
    v12->_isSelected = selected;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUIPlaybackTabDetails);
  v5 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v5;

  v7 = [(NSString *)self->_tabId copy];
  tabId = v4->_tabId;
  v4->_tabId = v7;

  v4->_isSelected = self->_isSelected;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(VUIPlaybackTabDetails *)self title];
      title2 = [(VUIPlaybackTabDetails *)v5 title];
      if ([title isEqualToString:title2])
      {
        tabId = [(VUIPlaybackTabDetails *)self tabId];
        tabId2 = [(VUIPlaybackTabDetails *)v5 tabId];
        v10 = [tabId isEqualToString:tabId2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end