@interface UITableViewRowAction
+ (UITableViewRowAction)rowActionWithStyle:(UITableViewRowActionStyle)style title:(NSString *)title handler:(void *)handler;
- (id)_initWithStyle:(int64_t)a3 title:(id)a4 handler:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UITableViewRowAction

+ (UITableViewRowAction)rowActionWithStyle:(UITableViewRowActionStyle)style title:(NSString *)title handler:(void *)handler
{
  v8 = handler;
  v9 = title;
  v10 = [[a1 alloc] _initWithStyle:style title:v9 handler:v8];

  return v10;
}

- (id)_initWithStyle:(int64_t)a3 title:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = UITableViewRowAction;
  v10 = [(UITableViewRowAction *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_style = a3;
    if (a3 == 1)
    {
      v12 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    }

    else
    {
      if (a3)
      {
LABEL_7:
        v14 = [v8 copy];
        title = v11->_title;
        v11->_title = v14;

        v16 = [v9 copy];
        handler = v11->_handler;
        v11->_handler = v16;

        goto LABEL_8;
      }

      v12 = +[UIColor systemRedColor];
    }

    backgroundColor = v11->_backgroundColor;
    v11->_backgroundColor = v12;

    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() rowActionWithStyle:self->_style title:self->_title handler:self->_handler];
  [v4 setBackgroundColor:self->_backgroundColor];
  return v4;
}

@end