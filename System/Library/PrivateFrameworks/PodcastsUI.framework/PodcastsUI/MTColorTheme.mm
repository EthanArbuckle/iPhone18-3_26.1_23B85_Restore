@interface MTColorTheme
- (BOOL)isEqual:(id)equal;
@end

@implementation MTColorTheme

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    isBackgroundLight = [(MTColorTheme *)self isBackgroundLight];
    if (isBackgroundLight == -[MTColorTheme isBackgroundLight](equalCopy, "isBackgroundLight") && (-[MTColorTheme backgroundColor](self, "backgroundColor"), v6 = objc_claimAutoreleasedReturnValue(), [v6 description], v7 = objc_claimAutoreleasedReturnValue(), -[MTColorTheme backgroundColor](equalCopy, "backgroundColor"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "description"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, v8, v7, v6, v10) && (-[MTColorTheme primaryTextColor](self, "primaryTextColor"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "description"), v12 = objc_claimAutoreleasedReturnValue(), -[MTColorTheme primaryTextColor](equalCopy, "primaryTextColor"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "description"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "isEqual:", v14), v14, v13, v12, v11, v15))
    {
      secondaryTextColor = [(MTColorTheme *)self secondaryTextColor];
      v17 = [secondaryTextColor description];
      secondaryTextColor2 = [(MTColorTheme *)equalCopy secondaryTextColor];
      v19 = [secondaryTextColor2 description];
      v20 = [v17 isEqual:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

@end