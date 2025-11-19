id VSBaseLocalizedString(uint64_t a1, uint64_t a2)
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = VSRecognitionModelCopyResourceURL();
  if (v5)
  {
    v6 = v5;
    v7 = [[NSDictionary alloc] initWithContentsOfURL:v5];
    v8 = [v7 objectForKey:a2];

    if (v8)
    {
      return v8;
    }
  }

  return [(NSBundle *)v4 localizedStringForKey:a2 value:&stru_41D8 table:a1];
}