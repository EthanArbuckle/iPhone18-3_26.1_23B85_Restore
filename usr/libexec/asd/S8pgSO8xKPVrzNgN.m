@interface S8pgSO8xKPVrzNgN
- (void)bQfuQcBGI0pnDtDP:(unint64_t)a3 completion:(id)a4;
@end

@implementation S8pgSO8xKPVrzNgN

- (void)bQfuQcBGI0pnDtDP:(unint64_t)a3 completion:(id)a4
{
  v4 = a3;
  v10 = a4;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v7 = +[AVSystemController sharedAVSystemController];
  v8 = [v7 attributeForKey:AVSystemController_CallIsActive];

  if (v8)
  {
    [v6 setValue:&off_1006BA778 forKey:@"t"];
    [v6 setValue:v8 forKey:@"sa"];
    [v5 insertObject:v6 atIndex:0];

LABEL_4:
    v9 = v10[2];
    goto LABEL_5;
  }

  v9 = v10[2];
LABEL_5:
  v9();
}

@end