@interface VKCMRCDataDetectorElement
- (CGRect)boundingBox;
- (CGRect)rectForMrcActionInPresentingViewController;
- (CGRect)sourceRectForPopoverActionPicker:(id)picker;
- (UIMenu)mrcMenu;
- (UIViewController)presentingViewControllerForMrcAction;
- (VKCMRCDataDetectorElement)initWithBarcodeObservation:(id)observation action:(id)action;
- (VKCMRCDataDetectorElement)initWithCoder:(id)coder;
- (VKCMRCDataDetectorElementDelegate)delegate;
- (id)boundingQuads;
- (id)debugMenu;
- (id)presentingViewControllerForAction:(id)action;
- (id)stringValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VKCMRCDataDetectorElement

- (VKCMRCDataDetectorElement)initWithBarcodeObservation:(id)observation action:(id)action
{
  observationCopy = observation;
  actionCopy = action;
  v20.receiver = self;
  v20.super_class = VKCMRCDataDetectorElement;
  v9 = [(VKCBaseDataDetectorElement *)&v20 init];
  if (v9)
  {
    if (!actionCopy)
    {
      [VKAssert handleFailedAssertWithCondition:"action" functionName:"[VKCMRCDataDetectorElement initWithBarcodeObservation:action:]" simulateCrash:0 showAlert:0 format:@"init for a Barcode Observtation, but there is no action"];
    }

    objc_storeStrong(v9 + 15, observation);
    vkQuad = [observationCopy vkQuad];
    v11 = *(v9 + 13);
    *(v9 + 13) = vkQuad;

    quad = [v9 quad];
    [quad boundingBox];
    *(v9 + 19) = v13;
    *(v9 + 20) = v14;
    *(v9 + 21) = v15;
    *(v9 + 22) = v16;

    v17 = *(MEMORY[0x1E695F050] + 16);
    *(v9 + 184) = *MEMORY[0x1E695F050];
    *(v9 + 200) = v17;
    v18 = *(v9 + 12) | 0x200000;
    if (!actionCopy)
    {
      v18 = 0;
    }

    *(v9 + 12) = v18;
    objc_storeStrong(v9 + 16, action);
    [*(v9 + 16) setDelegate:v9];
    [v9 createChildrenIfNecessary];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  barcodeObservation = [(VKCMRCDataDetectorElement *)self barcodeObservation];
  [coderCopy encodeObject:barcodeObservation forKey:@"BCO"];

  scannerResult = [(VKCMRCDataDetectorElement *)self scannerResult];
  [coderCopy encodeObject:scannerResult forKey:@"Action"];
}

- (VKCMRCDataDetectorElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCO"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v6 = getBCSActionClass_softClass;
  v15 = getBCSActionClass_softClass;
  if (!getBCSActionClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getBCSActionClass_block_invoke;
    v11[3] = &unk_1E7BE3F48;
    v11[4] = &v12;
    __getBCSActionClass_block_invoke(v11);
    v6 = v13[3];
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"Action"];
  v9 = [(VKCMRCDataDetectorElement *)self initWithBarcodeObservation:v5 action:v8];

  return v9;
}

- (id)debugMenu
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__7;
  v34 = __Block_byref_object_dispose__7;
  v35 = 0;
  v4 = [objc_opt_class() stringArrayForVKDataDetectorTypes:{-[VKCMRCDataDetectorElement dataDetectorTypes](self, "dataDetectorTypes")}];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __38__VKCMRCDataDetectorElement_debugMenu__block_invoke;
  v27[3] = &unk_1E7BE5C48;
  v29 = &v30;
  v5 = v3;
  v28 = v5;
  [v4 enumerateObjectsUsingBlock:v27];
  v6 = MEMORY[0x1E696AEC0];
  barcodeObservation = [(VKCMRCDataDetectorElement *)self barcodeObservation];
  payloadStringValue = [barcodeObservation payloadStringValue];
  v9 = [v6 stringWithFormat:@"%@", payloadStringValue];
  v10 = v31[5];
  v31[5] = v9;

  v11 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Payload" subtitle:v31[5]];
  [v5 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  barcodeObservation2 = [(VKCMRCDataDetectorElement *)self barcodeObservation];
  symbology = [barcodeObservation2 symbology];
  v15 = [v12 stringWithFormat:@"%@", symbology];
  v16 = v31[5];
  v31[5] = v15;

  v17 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Symbology" subtitle:v31[5]];
  [v5 addObject:v17];

  boundingQuads = [(VKCMRCDataDetectorElement *)self boundingQuads];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __38__VKCMRCDataDetectorElement_debugMenu__block_invoke_2;
  v24[3] = &unk_1E7BE5C70;
  v26 = &v30;
  v19 = v5;
  v25 = v19;
  [boundingQuads enumerateObjectsUsingBlock:v24];

  barcodeAction = [(VKCMRCDataDetectorElement *)self barcodeAction];
  actionIcon = [barcodeAction actionIcon];

  v22 = [MEMORY[0x1E69DCC60] vk_menuWithItems:v19 title:@"MRC" subtitle:0 image:actionIcon];

  _Block_object_dispose(&v30, 8);

  return v22;
}

void __38__VKCMRCDataDetectorElement_debugMenu__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"VKType" subtitle:*(*(*(a1 + 40) + 8) + 40)];
  [v6 addObject:v7];
}

void __38__VKCMRCDataDetectorElement_debugMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a2 summaryDescription];
  v5 = [v3 stringWithFormat:@"%@", v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Quad" subtitle:*(*(*(a1 + 40) + 8) + 40)];
  [v8 addObject:v9];
}

- (UIMenu)mrcMenu
{
  barcodeAction = [(VKCMRCDataDetectorElement *)self barcodeAction];
  v3 = MEMORY[0x1E69DCC60];
  contentPreviewString = [barcodeAction contentPreviewString];
  actionIcon = [barcodeAction actionIcon];
  menuElements = [barcodeAction menuElements];
  v7 = [v3 menuWithTitle:contentPreviewString image:actionIcon identifier:0 options:1 children:menuElements];

  return v7;
}

- (id)boundingQuads
{
  v9[1] = *MEMORY[0x1E69E9840];
  boundingQuads = self->_boundingQuads;
  if (!boundingQuads)
  {
    quad = [(VKCMRCDataDetectorElement *)self quad];
    v5 = quad;
    if (quad)
    {
      v9[0] = quad;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      v7 = self->_boundingQuads;
      self->_boundingQuads = v6;
    }

    else
    {
      [VKAssert handleFailedAssertWithCondition:"((quad) != nil)" functionName:"[VKCMRCDataDetectorElement boundingQuads]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "quad"];
      v7 = self->_boundingQuads;
      self->_boundingQuads = MEMORY[0x1E695E0F0];
    }

    boundingQuads = self->_boundingQuads;
  }

  return boundingQuads;
}

- (id)stringValue
{
  dataDetectorTypes = [(VKCMRCDataDetectorElement *)self dataDetectorTypes];

  return VKMUIStringForDDTypes(dataDetectorTypes);
}

- (id)presentingViewControllerForAction:(id)action
{
  presentingViewControllerForMrcAction = [(VKCMRCDataDetectorElement *)self presentingViewControllerForMrcAction];
  if (!presentingViewControllerForMrcAction)
  {
    v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_INFO, "Using the key window's root view controller for BCSAction's presenting view controller.", v7, 2u);
    }

    _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    presentingViewControllerForMrcAction = [_applicationKeyWindow rootViewController];
  }

  return presentingViewControllerForMrcAction;
}

- (CGRect)sourceRectForPopoverActionPicker:(id)picker
{
  delegate = [(VKCMRCDataDetectorElement *)self delegate];

  if (delegate)
  {
    delegate2 = [(VKCMRCDataDetectorElement *)self delegate];
    barcodeAction = [(VKCMRCDataDetectorElement *)self barcodeAction];
    v7 = [(VKCMRCDataDetectorElement *)self presentingViewControllerForAction:barcodeAction];
    [delegate2 rectForMrcActionInViewController:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [(VKCMRCDataDetectorElement *)self rectForMrcActionInPresentingViewController];
    if (CGRectIsNull(v24))
    {
      v9 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v13 = *(MEMORY[0x1E695F058] + 16);
      v15 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      [(VKCMRCDataDetectorElement *)self rectForMrcActionInPresentingViewController];
      v9 = v16;
      v11 = v17;
      v13 = v18;
      v15 = v19;
    }
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewController)presentingViewControllerForMrcAction
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewControllerForMrcAction);

  return WeakRetained;
}

- (VKCMRCDataDetectorElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)rectForMrcActionInPresentingViewController
{
  x = self->_rectForMrcActionInPresentingViewController.origin.x;
  y = self->_rectForMrcActionInPresentingViewController.origin.y;
  width = self->_rectForMrcActionInPresentingViewController.size.width;
  height = self->_rectForMrcActionInPresentingViewController.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end