@interface VUIModalPresentationConfiguration
+ (id)presentationTypeKeyMap;
- (CGRect)popOverSourceRect;
- (VUIModalPresentationConfiguration)init;
- (VUIModalPresentationConfiguration)initWithOptions:(id)options;
- (void)_applyAlertActionsForController:(id)controller;
@end

@implementation VUIModalPresentationConfiguration

+ (id)presentationTypeKeyMap
{
  if (presentationTypeKeyMap_onceToken != -1)
  {
    +[VUIModalPresentationConfiguration presentationTypeKeyMap];
  }

  v3 = presentationTypeKeyMap__typeKeyMap;

  return v3;
}

void __59__VUIModalPresentationConfiguration_presentationTypeKeyMap__block_invoke()
{
  v3[13] = *MEMORY[0x277D85DE8];
  v2[0] = @"fullScreen";
  v2[1] = @"pageSheet";
  v3[0] = &unk_2880E0808;
  v3[1] = &unk_2880E0820;
  v2[2] = @"formSheet";
  v2[3] = @"currentContext";
  v3[2] = &unk_2880E0838;
  v3[3] = &unk_2880E0850;
  v2[4] = @"custom";
  v2[5] = @"fullScreen";
  v3[4] = &unk_2880E0868;
  v3[5] = &unk_2880E0880;
  v2[6] = @"overCurrentContext";
  v2[7] = @"popover";
  v3[6] = &unk_2880E0850;
  v3[7] = &unk_2880E0898;
  v2[8] = @"blurOverFullScreen";
  v2[9] = @"none";
  v3[8] = &unk_2880E08B0;
  v3[9] = &unk_2880E08C8;
  v2[10] = @"playback";
  v2[11] = @"alert";
  v3[10] = &unk_2880E08E0;
  v3[11] = &unk_2880E08F8;
  v2[12] = @"actionSheet";
  v3[12] = &unk_2880E0910;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:13];
  v1 = presentationTypeKeyMap__typeKeyMap;
  presentationTypeKeyMap__typeKeyMap = v0;
}

- (VUIModalPresentationConfiguration)init
{
  v8.receiver = self;
  v8.super_class = VUIModalPresentationConfiguration;
  v2 = [(VUIModalPresentationConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    popOverSourceBarButtonItem = v2->_popOverSourceBarButtonItem;
    v2->_type = 0;
    v2->_popOverSourceBarButtonItem = 0;
    v2->_navigationBarHidden = 1;
    *&v2->_allowsModalOverModal = 256;

    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v3->_popOverSourceRect.origin = *MEMORY[0x277CBF3A0];
    v3->_popOverSourceRect.size = v5;
    popOverSourceView = v3->_popOverSourceView;
    v3->_popOverSourceView = 0;

    v3->_popOverArrowDirection = 15;
  }

  return v3;
}

- (VUIModalPresentationConfiguration)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(VUIModalPresentationConfiguration *)self init];
  if (v5)
  {
    presentationTypeKeyMap = [objc_opt_class() presentationTypeKeyMap];
    v7 = [optionsCopy objectForKey:@"presentationType"];
    v8 = [presentationTypeKeyMap objectForKey:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = [v8 integerValue];
    }

    else
    {
      type = v5->_type;
    }

    v5->_type = type;
  }

  return v5;
}

- (void)_applyAlertActionsForController:(id)controller
{
  controllerCopy = controller;
  alertActions = [(VUIModalPresentationConfiguration *)self alertActions];
  [controllerCopy _setActions:alertActions];
}

- (CGRect)popOverSourceRect
{
  x = self->_popOverSourceRect.origin.x;
  y = self->_popOverSourceRect.origin.y;
  width = self->_popOverSourceRect.size.width;
  height = self->_popOverSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end