@interface UIFactory
- (BOOL)isDocumentViewController:(id)a3 equalToViewController:(id)a4;
- (id)URLForResource:(id)a3;
- (id)_imageProxyForIKElement:(id)a3 withLayout:(id)a4;
- (id)clipsViewControllerWithIndex:(unint64_t)a3 collectionData:(id)a4 maxMovieContentRating:(id)a5 maxTVContentRating:(id)a6 allowsCellular:(BOOL)a7;
- (id)clipsViewControllerWithIndex:(unint64_t)a3 trailerEndpoint:(id)a4 maxMovieContentRating:(id)a5 maxTVContentRating:(id)a6 allowsCellular:(BOOL)a7;
- (id)createMultiPlayerViewControllerWithPlayerViewControllers:(id)a3 showingDetails:(BOOL)a4;
- (id)imageForResource:(id)a3;
- (id)initializeLivePostPlayControllerWithPlayer:(id)a3 playerViewController:(id)a4 presentationView:(id)a5;
- (id)performanceDebuggerViewController;
- (id)playbackContainerViewController;
- (id)rootSplitViewController;
- (id)timedMetadataDebuggerViewController;
- (id)viewControllerWithDocumentDataSource:(id)a3 appContext:(id)a4 documentOptions:(id)a5;
- (void)recordImpressionsForViewController:(id)a3;
- (void)scrollViewControllerToTop:(id)a3 animated:(BOOL)a4 needsFocusUpdate:(BOOL)a5;
@end

@implementation UIFactory

- (id)viewControllerWithDocumentDataSource:(id)a3 appContext:(id)a4 documentOptions:(id)a5
{
  if (a5)
  {
    sub_1E4205C64();
  }

  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1E3D50594();
  v12 = v11;

  return v12;
}

- (void)recordImpressionsForViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E3D5162C(a3);
}

- (id)playbackContainerViewController
{
  v2 = self;
  v3 = sub_1E3D5174C();

  return v3;
}

- (id)clipsViewControllerWithIndex:(unint64_t)a3 trailerEndpoint:(id)a4 maxMovieContentRating:(id)a5 maxTVContentRating:(id)a6 allowsCellular:(BOOL)a7
{
  OUTLINED_FUNCTION_31_1();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1E4205F14();
  v13 = v10;
  v14 = v8;
  v15 = v12;
  v16 = OUTLINED_FUNCTION_125();
  sub_1E3D517BC(v16);

  OUTLINED_FUNCTION_25_2();

  return v17;
}

- (id)clipsViewControllerWithIndex:(unint64_t)a3 collectionData:(id)a4 maxMovieContentRating:(id)a5 maxTVContentRating:(id)a6 allowsCellular:(BOOL)a7
{
  sub_1E4205C64();
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = OUTLINED_FUNCTION_125();
  v16 = sub_1E3D51938(v14, v15, a5, a6, a7);

  return v16;
}

- (BOOL)isDocumentViewController:(id)a3 equalToViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OUTLINED_FUNCTION_16_0();
  LOBYTE(a4) = sub_1E3D51DAC(v9, v10);

  return a4 & 1;
}

- (id)createMultiPlayerViewControllerWithPlayerViewControllers:(id)a3 showingDetails:(BOOL)a4
{
  sub_1E3D529CC();
  sub_1E42062B4();
  v5 = self;
  v6 = sub_1E3D51F14();

  return v6;
}

- (id)timedMetadataDebuggerViewController
{
  v2 = self;
  v3 = sub_1E3D5205C();

  return v3;
}

- (id)performanceDebuggerViewController
{
  v2 = self;
  v3 = sub_1E3D520CC();

  return v3;
}

- (void)scrollViewControllerToTop:(id)a3 animated:(BOOL)a4 needsFocusUpdate:(BOOL)a5
{
  v9 = a3;
  v10 = self;
  sub_1E3D5213C(a3, a4, a5);
}

- (id)rootSplitViewController
{
  v2 = self;
  v3 = sub_1E3D52294();

  return v3;
}

- (id)initializeLivePostPlayControllerWithPlayer:(id)a3 playerViewController:(id)a4 presentationView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  OUTLINED_FUNCTION_17_106();
  sub_1E3D52304();
  v13 = v12;

  return v13;
}

- (id)URLForResource:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1E4205F14();
  v7 = self;
  sub_1E3D523E4(v6);

  v8 = sub_1E41FE414();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1E41FE364();
    v10 = OUTLINED_FUNCTION_16_0();
    v11(v10);
  }

  return v9;
}

- (id)imageForResource:(id)a3
{
  sub_1E4205F14();
  v4 = self;
  v5 = sub_1E3D525D8();

  return v5;
}

- (id)_imageProxyForIKElement:(id)a3 withLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OUTLINED_FUNCTION_13_8();
  v11 = sub_1E3D52728(v9, v10);

  return v11;
}

@end