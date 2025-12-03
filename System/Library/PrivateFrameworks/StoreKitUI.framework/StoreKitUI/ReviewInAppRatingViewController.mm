@interface ReviewInAppRatingViewController
+ (id)makeRatingControllerWithTitle:(id)title message:(id)message icon:(id)icon disableSubmit:(BOOL)submit isNativeVision:(BOOL)vision ratingHandler:(id)handler completion:(id)completion;
- (ReviewInAppRatingViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ReviewInAppRatingViewController

+ (id)makeRatingControllerWithTitle:(id)title message:(id)message icon:(id)icon disableSubmit:(BOOL)submit isNativeVision:(BOOL)vision ratingHandler:(id)handler completion:(id)completion
{
  visionCopy = vision;
  submitCopy = submit;
  v11 = _Block_copy(handler);
  v12 = _Block_copy(completion);
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
  iconCopy = icon;
  v23 = sub_215EC38A8(v13, v15, v16, v18, iconCopy, submitCopy, visionCopy, v20, v19, v12, v21);
  sub_215BB174C(v12);
  sub_215BB174C(v20);

  return v23;
}

- (ReviewInAppRatingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_215F09818();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return ReviewInAppRatingViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end