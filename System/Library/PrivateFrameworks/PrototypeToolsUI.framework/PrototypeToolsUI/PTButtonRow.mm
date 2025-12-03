@interface PTButtonRow
+ (id)rowWithTitle:(id)title actionHandler:(id)handler;
@end

@implementation PTButtonRow

+ (id)rowWithTitle:(id)title actionHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004CAC;
  v11[3] = &unk_100018B50;
  handlerCopy = handler;
  v6 = handlerCopy;
  titleCopy = title;
  v8 = [PTRowAction actionWithHandler:v11];
  v9 = [self rowWithTitle:titleCopy action:v8];

  return v9;
}

@end