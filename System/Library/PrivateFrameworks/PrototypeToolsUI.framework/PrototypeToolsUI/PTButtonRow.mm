@interface PTButtonRow
+ (id)rowWithTitle:(id)a3 actionHandler:(id)a4;
@end

@implementation PTButtonRow

+ (id)rowWithTitle:(id)a3 actionHandler:(id)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004CAC;
  v11[3] = &unk_100018B50;
  v12 = a4;
  v6 = v12;
  v7 = a3;
  v8 = [PTRowAction actionWithHandler:v11];
  v9 = [a1 rowWithTitle:v7 action:v8];

  return v9;
}

@end