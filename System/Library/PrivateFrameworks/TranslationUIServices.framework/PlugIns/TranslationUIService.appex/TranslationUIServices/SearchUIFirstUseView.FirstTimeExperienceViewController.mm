@interface SearchUIFirstUseView.FirstTimeExperienceViewController
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithCoder:(id)coder;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithDomains:(id)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithStyle:(unint64_t)style supportedDomains:(unint64_t)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title;
- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title;
- (void)viewWillLayoutSubviews;
@end

@implementation SearchUIFirstUseView.FirstTimeExperienceViewController

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10001FF70();
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithDomains:(id)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title
{
  textCopy = text;
  if (domains)
  {
    v9 = sub_100051248();
    if (textCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (text)
    {
LABEL_3:
      textCopy = sub_100051158();
      v11 = v10;
      if (moreText)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      titleCopy2 = title;
      if (titleCopy2)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      v18 = 0;
      return sub_1000200F4(v9, textCopy, v11, moreText, v13, v16, v18);
    }
  }

  v11 = 0;
  if (!moreText)
  {
    goto LABEL_8;
  }

LABEL_4:
  moreText = sub_100051158();
  v13 = v12;
  titleCopy2 = title;
  if (!titleCopy2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = titleCopy2;
  v16 = sub_100051158();
  v18 = v17;

  return sub_1000200F4(v9, textCopy, v11, moreText, v13, v16, v18);
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithSupportedDomains:(unint64_t)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title
{
  moreTextCopy = moreText;
  if (text)
  {
    v9 = sub_100051158();
    v11 = v10;
    if (moreTextCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (title)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    return sub_10002033C(domains, v9, v11, moreTextCopy, v13, v14, v16);
  }

  v9 = 0;
  v11 = 0;
  if (!moreText)
  {
    goto LABEL_6;
  }

LABEL_3:
  moreTextCopy = sub_100051158();
  v13 = v12;
  if (!title)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_100051158();
  v16 = v15;
  return sub_10002033C(domains, v9, v11, moreTextCopy, v13, v14, v16);
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithStyle:(unint64_t)style supportedDomains:(unint64_t)domains explanationText:(id)text learnMoreText:(id)moreText continueButtonTitle:(id)title
{
  moreTextCopy = moreText;
  if (text)
  {
    v11 = sub_100051158();
    v13 = v12;
    if (moreTextCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (title)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    return sub_100020514(style, domains, v11, v13, moreTextCopy, v15, v16, v18);
  }

  v11 = 0;
  v13 = 0;
  if (!moreText)
  {
    goto LABEL_6;
  }

LABEL_3:
  moreTextCopy = sub_100051158();
  v15 = v14;
  if (!title)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = sub_100051158();
  v18 = v17;
  return sub_100020514(style, domains, v11, v13, moreTextCopy, v15, v16, v18);
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100051158();
    v6 = &self->SearchUIFirstTimeExperienceViewController_opaque[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    bundleCopy = bundle;
    v8 = sub_100051128();
  }

  else
  {
    v9 = &self->SearchUIFirstTimeExperienceViewController_opaque[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
    *v9 = 0u;
    *(v9 + 1) = 0u;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  v11 = [(SearchUIFirstUseView.FirstTimeExperienceViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController)initWithCoder:(id)coder
{
  v4 = &self->SearchUIFirstTimeExperienceViewController_opaque[OBJC_IVAR____TtCV20TranslationUIService20SearchUIFirstUseView33FirstTimeExperienceViewController_fittingSize];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchUIFirstUseView.FirstTimeExperienceViewController();
  coderCopy = coder;
  v6 = [(SearchUIFirstUseView.FirstTimeExperienceViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end