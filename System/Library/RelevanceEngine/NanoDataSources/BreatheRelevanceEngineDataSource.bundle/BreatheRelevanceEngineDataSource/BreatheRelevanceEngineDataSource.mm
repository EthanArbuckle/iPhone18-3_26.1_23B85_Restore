id BRDSBreatheBundle()
{
  if (qword_8260 != -1)
  {
    sub_FC4();
  }

  v1 = qword_8258;

  return v1;
}

void sub_B44(id a1)
{
  qword_8258 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id BRDSBreatheContent()
{
  v0 = objc_alloc_init(REContent);
  [v0 setObject:REElementInteractionTap forKey:REContentInteractionKey];
  v1 = +[CLKDevice currentDevice];
  v2 = [v1 sizeClass];

  if (v2)
  {
    v3 = @"SG_Breathe";
  }

  else
  {
    v3 = @"SG_Breathe_38mm";
  }

  v4 = BRDSBreatheImageNamed(v3);
  [v0 setOverrideBodyImage:v4];
  [v0 setStyle:3];
  v5 = BRDSBreatheLocalizedString(@"UP_NEXT_BREATHE_DESCRIPTION");
  v6 = [CLKSimpleTextProvider textProviderWithText:v5];
  [v0 setDescription1TextProvider:v6];

  v7 = +[ARUIMetricColors deepBreathingColors];
  v8 = [v7 nonGradientTextColor];
  [v0 setTintColor:v8];

  return v0;
}

id BRDSBreatheImageNamed(void *a1)
{
  v1 = a1;
  v2 = BRDSBreatheBundle();
  v3 = REImageNamedFromBundle();

  return v3;
}

id BRDSBreatheLocalizedString(void *a1)
{
  v1 = a1;
  v2 = BRDSBreatheBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_41F0 table:@"Localizable"];

  return v3;
}