@interface SearchUIFirstUseView.FirstTimeExperienceViewController
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithCoder:(id)a3;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithDomains:(id)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithStyle:(unint64_t)a3 supportedDomains:(unint64_t)a4 explanationText:(id)a5 learnMoreText:(id)a6 continueButtonTitle:(id)a7;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchUIFirstUseView.FirstTimeExperienceViewController

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10001FF70();
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithDomains:(id)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6
{
  v8 = a4;
  if (a3)
  {
    v9 = sub_100051248();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
LABEL_3:
      v8 = sub_100051158();
      v11 = v10;
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      v14 = a6;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      v18 = 0;
      return sub_1000200F4(v9, v8, v11, a5, v13, v16, v18);
    }
  }

  v11 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  a5 = sub_100051158();
  v13 = v12;
  v14 = a6;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = v14;
  v16 = sub_100051158();
  v18 = v17;

  return sub_1000200F4(v9, v8, v11, a5, v13, v16, v18);
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)a3 explanationText:(id)a4 learnMoreText:(id)a5 continueButtonTitle:(id)a6
{
  v7 = a5;
  if (a4)
  {
    v9 = sub_100051158();
    v11 = v10;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    return sub_10002033C(a3, v9, v11, v7, v13, v14, v16);
  }

  v9 = 0;
  v11 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = sub_100051158();
  v13 = v12;
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_100051158();
  v16 = v15;
  return sub_10002033C(a3, v9, v11, v7, v13, v14, v16);
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithStyle:(unint64_t)a3 supportedDomains:(unint64_t)a4 explanationText:(id)a5 learnMoreText:(id)a6 continueButtonTitle:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v11 = sub_100051158();
    v13 = v12;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    return sub_100020514(a3, a4, v11, v13, v8, v15, v16, v18);
  }

  v11 = 0;
  v13 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_100051158();
  v15 = v14;
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = sub_100051158();
  v18 = v17;
  return sub_100020514(a3, a4, v11, v13, v8, v15, v16, v18);
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100051158();
    v6 = &self->SearchUIFirstTimeExperienceViewController_opaque[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    v7 = a4;
    v8 = sub_100051128();
  }

  else
  {
    v9 = &self->SearchUIFirstTimeExperienceViewController_opaque[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
    *v9 = 0u;
    *(v9 + 1) = 0u;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  v11 = [(SearchUIFirstUseView.FirstTimeExperienceViewController *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithCoder:(id)a3
{
  v4 = &self->SearchUIFirstTimeExperienceViewController_opaque[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  v5 = a3;
  v6 = [(SearchUIFirstUseView.FirstTimeExperienceViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end