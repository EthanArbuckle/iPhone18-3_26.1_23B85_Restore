@interface DBSDisplayZoomMode
- (CGSize)size;
- (DBSDisplayZoomMode)initWithDisplayZoomOption:(unint64_t)a3 localizedName:(id)a4 size:(CGSize)a5;
@end

@implementation DBSDisplayZoomMode

- (DBSDisplayZoomMode)initWithDisplayZoomOption:(unint64_t)a3 localizedName:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = DBSDisplayZoomMode;
  v10 = [(DBSDisplayZoomMode *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_displayZoomOption = a3;
    v12 = [v9 copy];
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