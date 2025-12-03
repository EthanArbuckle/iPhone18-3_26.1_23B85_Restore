@interface UIFactory
- (BOOL)isDocumentViewController:(id)controller equalToViewController:(id)viewController;
- (id)URLForResource:(id)resource;
- (id)_imageProxyForIKElement:(id)element withLayout:(id)layout;
- (id)clipsViewControllerWithIndex:(unint64_t)index collectionData:(id)data maxMovieContentRating:(id)rating maxTVContentRating:(id)contentRating allowsCellular:(BOOL)cellular;
- (id)clipsViewControllerWithIndex:(unint64_t)index trailerEndpoint:(id)endpoint maxMovieContentRating:(id)rating maxTVContentRating:(id)contentRating allowsCellular:(BOOL)cellular;
- (id)createMultiPlayerViewControllerWithPlayerViewControllers:(id)controllers showingDetails:(BOOL)details;
- (id)imageForResource:(id)resource;
- (id)initializeLivePostPlayControllerWithPlayer:(id)player playerViewController:(id)controller presentationView:(id)view;
- (id)performanceDebuggerViewController;
- (id)playbackContainerViewController;
- (id)rootSplitViewController;
- (id)timedMetadataDebuggerViewController;
- (id)viewControllerWithDocumentDataSource:(id)source appContext:(id)context documentOptions:(id)options;
- (void)recordImpressionsForViewController:(id)controller;
- (void)scrollViewControllerToTop:(id)top animated:(BOOL)animated needsFocusUpdate:(BOOL)update;
@end

@implementation UIFactory

- (id)viewControllerWithDocumentDataSource:(id)source appContext:(id)context documentOptions:(id)options
{
  if (options)
  {
    sub_1E4205C64();
  }

  sourceCopy = source;
  contextCopy = context;
  selfCopy = self;
  sub_1E3D50594();
  v12 = v11;

  return v12;
}

- (void)recordImpressionsForViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E3D5162C(controller);
}

- (id)playbackContainerViewController
{
  selfCopy = self;
  v3 = sub_1E3D5174C();

  return v3;
}

- (id)clipsViewControllerWithIndex:(unint64_t)index trailerEndpoint:(id)endpoint maxMovieContentRating:(id)rating maxTVContentRating:(id)contentRating allowsCellular:(BOOL)cellular
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

- (id)clipsViewControllerWithIndex:(unint64_t)index collectionData:(id)data maxMovieContentRating:(id)rating maxTVContentRating:(id)contentRating allowsCellular:(BOOL)cellular
{
  sub_1E4205C64();
  ratingCopy = rating;
  contentRatingCopy = contentRating;
  selfCopy = self;
  v14 = OUTLINED_FUNCTION_125();
  v16 = sub_1E3D51938(v14, v15, rating, contentRating, cellular);

  return v16;
}

- (BOOL)isDocumentViewController:(id)controller equalToViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = OUTLINED_FUNCTION_16_0();
  LOBYTE(viewController) = sub_1E3D51DAC(v9, v10);

  return viewController & 1;
}

- (id)createMultiPlayerViewControllerWithPlayerViewControllers:(id)controllers showingDetails:(BOOL)details
{
  sub_1E3D529CC();
  sub_1E42062B4();
  selfCopy = self;
  v6 = sub_1E3D51F14();

  return v6;
}

- (id)timedMetadataDebuggerViewController
{
  selfCopy = self;
  v3 = sub_1E3D5205C();

  return v3;
}

- (id)performanceDebuggerViewController
{
  selfCopy = self;
  v3 = sub_1E3D520CC();

  return v3;
}

- (void)scrollViewControllerToTop:(id)top animated:(BOOL)animated needsFocusUpdate:(BOOL)update
{
  topCopy = top;
  selfCopy = self;
  sub_1E3D5213C(top, animated, update);
}

- (id)rootSplitViewController
{
  selfCopy = self;
  v3 = sub_1E3D52294();

  return v3;
}

- (id)initializeLivePostPlayControllerWithPlayer:(id)player playerViewController:(id)controller presentationView:(id)view
{
  playerCopy = player;
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  OUTLINED_FUNCTION_17_106();
  sub_1E3D52304();
  v13 = v12;

  return v13;
}

- (id)URLForResource:(id)resource
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1E4205F14();
  selfCopy = self;
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

- (id)imageForResource:(id)resource
{
  sub_1E4205F14();
  selfCopy = self;
  v5 = sub_1E3D525D8();

  return v5;
}

- (id)_imageProxyForIKElement:(id)element withLayout:(id)layout
{
  elementCopy = element;
  layoutCopy = layout;
  selfCopy = self;
  v9 = OUTLINED_FUNCTION_13_8();
  v11 = sub_1E3D52728(v9, v10);

  return v11;
}

@end