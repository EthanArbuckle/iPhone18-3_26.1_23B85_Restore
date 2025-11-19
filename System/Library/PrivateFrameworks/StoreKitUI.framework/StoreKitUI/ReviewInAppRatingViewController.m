@interface ReviewInAppRatingViewController
+ (id)makeRatingControllerWithTitle:(id)a3 message:(id)a4 icon:(id)a5 disableSubmit:(BOOL)a6 isNativeVision:(BOOL)a7 ratingHandler:(id)a8 completion:(id)a9;
- (ReviewInAppRatingViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ReviewInAppRatingViewController

+ (id)makeRatingControllerWithTitle:(id)a3 message:(id)a4 icon:(id)a5 disableSubmit:(BOOL)a6 isNativeVision:(BOOL)a7 ratingHandler:(id)a8 completion:(id)a9
{
  v25 = a7;
  v9 = a6;
  v11 = _Block_copy(a8);
  v12 = _Block_copy(a9);
  v13 = sub_215F09818();
  v15 = v14;
  v16 = sub_215F09818();
  v18 = v17;
  if (v11)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    v20 = sub_215EC49E0;
    if (v12)
    {
LABEL_3:
      v21 = swift_allocObject();
      *(v21 + 16) = v12;
      v12 = sub_215EC49CC;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  v22 = a5;
  v23 = sub_215EC38A8(v13, v15, v16, v18, v22, v9, v25, v20, v19, v12, v21);
  sub_215BB174C(v12);
  sub_215BB174C(v20);

  return v23;
}

- (ReviewInAppRatingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_215F09818();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return ReviewInAppRatingViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end