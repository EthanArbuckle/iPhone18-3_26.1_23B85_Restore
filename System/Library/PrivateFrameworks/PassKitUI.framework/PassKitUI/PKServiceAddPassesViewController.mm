@interface PKServiceAddPassesViewController
- (PKServiceAddPassesViewController)init;
- (PKServiceAddPassesViewControllerResultsDelegate)resultsDelegate;
- (void)_beginReportingIfNecessary;
- (void)_dismissDelayed;
- (void)_endReportingIfNecessary;
- (void)_ingestionDidFinishWithResult:(unint64_t)result;
- (void)_setUpCardStackViewControllerWithPassDataArray:(id)array orPassesContainer:(id)container fromPresentationSource:(unint64_t)source shouldPushController:(BOOL)controller;
- (void)_setUpIssuerBindingViewControllerWithData:(id)data signature:(id)signature fromPresentationSource:(unint64_t)source;
- (void)addPassesCardStackViewController:(id)controller didCancelAddingPasses:(id)passes;
- (void)dealloc;
- (void)ingestPasses:(id)passes orPassesContainer:(id)container orIssuerData:(id)data withSignature:(id)signature fromPresentationSource:(unint64_t)source;
- (void)issuerBindingViewControllerDidCancel:(id)cancel;
- (void)resetBrightness;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
@end

@implementation PKServiceAddPassesViewController

- (PKServiceAddPassesViewController)init
{
  v5.receiver = self;
  v5.super_class = PKServiceAddPassesViewController;
  v2 = [(PKNavigationController *)&v5 init];
  if (v2)
  {
    v3 = +[PKBacklightController sharedInstance];
    [v3 beginAllowingBacklightRamping:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(PKServiceAddPassesViewController *)self _endReportingIfNecessary];
  v3.receiver = self;
  v3.super_class = PKServiceAddPassesViewController;
  [(PKNavigationController *)&v3 dealloc];
}

- (void)addPassesCardStackViewController:(id)controller didCancelAddingPasses:(id)passes
{
  [(PKServiceAddPassesViewController *)self resetBrightness:controller];

  [(PKServiceAddPassesViewController *)self _ingestionDidFinishWithResult:0];
}

- (void)issuerBindingViewControllerDidCancel:(id)cancel
{
  [(PKServiceAddPassesViewController *)self resetBrightness];

  [(PKServiceAddPassesViewController *)self _ingestionDidFinishWithResult:0];
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v13 = *MEMORY[0x1E69E9840];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14.width = width;
    v14.height = height;
    v8 = NSStringFromCGSize(v14);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    scaleCopy = scale;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)ingestPasses:(id)passes orPassesContainer:(id)container orIssuerData:(id)data withSignature:(id)signature fromPresentationSource:(unint64_t)source
{
  passesCopy = passes;
  containerCopy = container;
  dataCopy = data;
  signatureCopy = signature;
  v15 = signatureCopy;
  if (passesCopy | containerCopy)
  {
    [(PKServiceAddPassesViewController *)self _setUpCardStackViewControllerWithPassDataArray:passesCopy orPassesContainer:containerCopy fromPresentationSource:source shouldPushController:0];
  }

  else if (dataCopy && signatureCopy)
  {
    [(PKServiceAddPassesViewController *)self _setUpIssuerBindingViewControllerWithData:dataCopy signature:signatureCopy fromPresentationSource:source];
  }

  else
  {
    [(PKServiceAddPassesViewController *)self _ingestionDidFinishWithResult:0];
  }
}

- (void)_dismissDelayed
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKServiceAddPassesViewController__dismissDelayed__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

uint64_t __51__PKServiceAddPassesViewController__dismissDelayed__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetBrightness];
  v2 = *(a1 + 32);

  return [v2 _ingestionDidFinishWithResult:1];
}

- (void)_setUpCardStackViewControllerWithPassDataArray:(id)array orPassesContainer:(id)container fromPresentationSource:(unint64_t)source shouldPushController:(BOOL)controller
{
  controllerCopy = controller;
  v17[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  arrayCopy = array;
  v12 = [[PKAddPassesCardStackViewController alloc] initWithPasses:arrayCopy orPassesContainer:containerCopy fromPresentationSource:source];

  cardStackViewController = self->_cardStackViewController;
  self->_cardStackViewController = v12;

  v14 = self->_cardStackViewController;
  if (v14)
  {
    [(PKAddPassesCardStackViewController *)v14 setDelegate:self];
    v15 = self->_cardStackViewController;
    if (controllerCopy)
    {

      [(PKServiceAddPassesViewController *)self pushViewController:v15 animated:1];
    }

    else
    {
      v17[0] = self->_cardStackViewController;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [(PKServiceAddPassesViewController *)self setViewControllers:v16 animated:0];
    }
  }

  else
  {

    [(PKServiceAddPassesViewController *)self _ingestionDidFinishWithResult:0];
  }
}

- (void)_setUpIssuerBindingViewControllerWithData:(id)data signature:(id)signature fromPresentationSource:(unint64_t)source
{
  v14[1] = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  dataCopy = data;
  [(PKServiceAddPassesViewController *)self _beginReportingIfNecessary];
  v10 = [[PKIssuerBindingViewController alloc] initWithIssuerData:dataCopy signature:signatureCopy referralSource:source];

  issuerBindingViewController = self->_issuerBindingViewController;
  self->_issuerBindingViewController = v10;

  v12 = self->_issuerBindingViewController;
  if (v12)
  {
    [(PKIssuerBindingViewController *)v12 setDelegate:self];
    v14[0] = self->_issuerBindingViewController;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(PKServiceAddPassesViewController *)self setViewControllers:v13 animated:0];
  }

  else
  {

    [(PKServiceAddPassesViewController *)self _ingestionDidFinishWithResult:0];
  }
}

- (void)_ingestionDidFinishWithResult:(unint64_t)result
{
  [(PKServiceAddPassesViewController *)self _endReportingIfNecessary];
  _remoteViewControllerProxy = [(PKServiceAddPassesViewController *)self _remoteViewControllerProxy];
  v6 = _remoteViewControllerProxy;
  if (_remoteViewControllerProxy)
  {
    [_remoteViewControllerProxy ingestionDidFinishWithResult:result];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);
    if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_resultsDelegate), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
    {
      v11 = objc_loadWeakRetained(&self->_resultsDelegate);
      [v11 viewController:self ingestionDidFinishWithResult:result];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Dismissing PKServiceAddPassesViewController remoteObjectProxy and resultsDelegate not set.", v13, 2u);
      }

      [(PKServiceAddPassesViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)resetBrightness
{
  [(PKAddPassesCardStackViewController *)self->_cardStackViewController resetBrightness];
  v3 = +[PKBacklightController sharedInstance];
  [v3 endAllowingBacklightRamping:self];
}

- (void)_beginReportingIfNecessary
{
  v2 = *MEMORY[0x1E69BB710];
  v3 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB710]];

  if (!v3)
  {
    v4 = MEMORY[0x1E69B8540];

    [v4 beginSubjectReporting:v2];
  }
}

- (void)_endReportingIfNecessary
{
  v2 = *MEMORY[0x1E69BB710];
  v3 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB710]];

  if (v3)
  {
    v4 = MEMORY[0x1E69B8540];

    [v4 endSubjectReporting:v2];
  }
}

- (PKServiceAddPassesViewControllerResultsDelegate)resultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);

  return WeakRetained;
}

@end