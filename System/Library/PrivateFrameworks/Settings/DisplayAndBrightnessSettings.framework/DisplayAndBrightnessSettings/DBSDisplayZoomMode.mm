@interface DBSDisplayZoomMode
- (CGSize)size;
- (DBSDisplayZoomMode)initWithDisplayZoomOption:(unint64_t)option localizedName:(id)name size:(CGSize)size;
@end

@implementation DBSDisplayZoomMode

- (DBSDisplayZoomMode)initWithDisplayZoomOption:(unint64_t)option localizedName:(id)name size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = DBSDisplayZoomMode;
  v10 = [(DBSDisplayZoomMode *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_displayZoomOption = option;
    v12 = [nameCopy copy];
    localizedName = v11->_localizedName;
    v11->_localizedName = v12;

    v11->_size.width = width;
    v11->_size.height = height;
  }

  return v11;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end