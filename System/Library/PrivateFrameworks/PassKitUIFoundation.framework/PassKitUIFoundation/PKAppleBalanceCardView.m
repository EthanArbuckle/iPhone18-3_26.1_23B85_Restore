@interface PKAppleBalanceCardView
- (PKAppleBalanceCardView)init;
@end

@implementation PKAppleBalanceCardView

- (PKAppleBalanceCardView)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"AppleBalance-diffuse" withExtension:@"png"];
  v5 = [v3 URLForResource:@"AppleBalance-metalness" withExtension:@"png"];
  v6 = [v3 URLForResource:@"AppleBalance-normal" withExtension:@"png"];
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v6 != 0)
  {
    v11 = PKCreateCGImage(v4);
    v12 = v11;
    if (!v11)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E0A9000, v13, OS_LOG_TYPE_DEFAULT, "PKAppleBalanceCardView: could not load diffuse image.", buf, 2u);
      }
    }

    v14 = PKCreateCGImage(v5);
    if (!v14)
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E0A9000, v15, OS_LOG_TYPE_DEFAULT, "PKAppleBalanceCardView: could not load metalness image.", buf, 2u);
      }
    }

    v16 = PKCreateCGImage(v7);
    v17 = v16;
    if (v16)
    {
      if (v12 && v14)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __30__PKAppleBalanceCardView_init__block_invoke;
        v21[3] = &__block_descriptor_56_e51___PKTexturedCardRenderer_16__0__PKMetalRenderLoop_8l;
        v21[4] = v12;
        v21[5] = v14;
        v21[6] = v16;
        v18 = [(PKTexturedCardView *)&self->super.super.super.super.isa _initWithPixelFormat:v21 renderer:?];
LABEL_26:
        CGImageRelease(v12);
        CGImageRelease(v14);
        CGImageRelease(v17);
        self = v18;
        v10 = self;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E0A9000, v19, OS_LOG_TYPE_DEFAULT, "PKAppleBalanceCardView: could not load normal image.", buf, 2u);
      }
    }

    v18 = 0;
    goto LABEL_26;
  }

  v10 = 0;
LABEL_27:

  return v10;
}

id *__30__PKAppleBalanceCardView_init__block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  [v3 setColorSpace:PKColorSpaceStandardRGB()];
  v4 = [[PKTexturedCardRenderer alloc] initWithStyle:v3 renderLoop:a1[4] diffuse:a1[5] metalness:a1[6] normal:?];

  return v4;
}

@end