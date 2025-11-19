@interface VUIPlaybackTabDetails
- (BOOL)isEqual:(id)a3;
- (VUIPlaybackTabDetails)initWithDictionary:(id)a3;
- (VUIPlaybackTabDetails)initWithTabId:(id)a3 andTitle:(id)a4 isSelected:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VUIPlaybackTabDetails

- (VUIPlaybackTabDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VUIPlaybackTabDetails;
  v5 = [(VUIPlaybackTabDetails *)&v13 init];
  if (v5)
  {
    v6 = [v4 vui_stringForKey:@"title"];
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

    v9 = [v4 vui_stringForKey:@"tabId"];
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

    v5->_isSelected = [v4 vui_BOOLForKey:@"isSelected" defaultValue:0];
  }

  return v5;
}

- (VUIPlaybackTabDetails)initWithTabId:(id)a3 andTitle:(id)a4 isSelected:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VUIPlaybackTabDetails;
  v11 = [(VUIPlaybackTabDetails *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a4);
    objc_storeStrong(&v12->_tabId, a3);
    v12->_isSelected = a5;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIPlaybackTabDetails *)self title];
      v7 = [(VUIPlaybackTabDetails *)v5 title];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(VUIPlaybackTabDetails *)self tabId];
        v9 = [(VUIPlaybackTabDetails *)v5 tabId];
        v10 = [v8 isEqualToString:v9];
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