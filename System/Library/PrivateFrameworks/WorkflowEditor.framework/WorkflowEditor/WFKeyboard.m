@interface WFKeyboard
+ (id)sharedKeyboard;
- (CGRect)keyboardFrame;
- (CGRect)keyboardFrameInView:(id)a3;
- (WFKeyboard)init;
- (void)dealloc;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)keyboardWillChangeVisible:(id)a3;
@end

@implementation WFKeyboard

+ (id)sharedKeyboard
{
  if (sharedKeyboard_onceToken != -1)
  {
    dispatch_once(&sharedKeyboard_onceToken, &__block_literal_global_58);
  }

  v3 = sharedKeyboard_sharedKeyboard;

  return v3;
}

void __28__WFKeyboard_sharedKeyboard__block_invoke()
{
  v0 = objc_alloc_init(WFKeyboard);
  v1 = sharedKeyboard_sharedKeyboard;
  sharedKeyboard_sharedKeyboard = v0;
}

- (WFKeyboard)init
{
  v5.receiver = self;
  v5.super_class = WFKeyboard;
  v2 = [(WFKeyboard *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_keyboardWillChangeVisible_ name:*MEMORY[0x277D76C60] object:0];
    [v3 addObserver:v2 selector:sel_keyboardWillChangeVisible_ name:*MEMORY[0x277D76C50] object:0];
    [v3 addObserver:v2 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
    [v3 addObserver:v2 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x277D76BA8] object:0];
  }

  return v2;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)keyboardFrameInView:(id)a3
{
  v4 = a3;
  v5 = [v4 window];
  v6 = [v5 windowScene];

  v7 = [MEMORY[0x277D759A0] mainScreen];
  v8 = [v7 coordinateSpace];
  [v4 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 coordinateSpace];
  [v8 convertRect:v17 fromCoordinateSpace:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v7 coordinateSpace];
  v27 = [v6 coordinateSpace];
  [v26 convertRect:v27 fromCoordinateSpace:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v54.origin.x = v19;
  v54.origin.y = v21;
  v54.size.width = v23;
  v54.size.height = v25;
  v59.origin.x = v29;
  v59.origin.y = v31;
  v59.size.width = v33;
  v59.size.height = v35;
  v55 = CGRectIntersection(v54, v59);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v40 = [v4 coordinateSpace];

  v41 = [v7 coordinateSpace];
  [v40 convertRect:v41 toCoordinateSpace:{x, y, width, height}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v56.origin.x = v43;
  v56.origin.y = v45;
  v56.size.width = v47;
  v56.size.height = v49;
  if (CGRectIsInfinite(v56) || (v57.origin.x = v43, v57.origin.y = v45, v57.size.width = v47, v57.size.height = v49, CGRectIsEmpty(v57)))
  {
    v43 = *MEMORY[0x277CBF3A0];
    v45 = *(MEMORY[0x277CBF3A0] + 8);
    v47 = *(MEMORY[0x277CBF3A0] + 16);
    v49 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v50 = v43;
  v51 = v45;
  v52 = v47;
  v53 = v49;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (void)keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  self->_keyboardFrame.origin.x = v6;
  self->_keyboardFrame.origin.y = v7;
  self->_keyboardFrame.size.width = v8;
  self->_keyboardFrame.size.height = v9;

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"WFKeyboardWillChangeNotification" object:self];
}

- (void)keyboardWillChangeVisible:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  self->_visible = [v5 isEqualToString:*MEMORY[0x277D76C60]];

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277D76BB8]];
  [v7 CGRectValue];
  self->_keyboardFrame.origin.x = v8;
  self->_keyboardFrame.origin.y = v9;
  self->_keyboardFrame.size.width = v10;
  self->_keyboardFrame.size.height = v11;

  v12 = [v4 userInfo];
  v13 = [v12 objectForKey:*MEMORY[0x277D76B70]];
  self->_animationCurve = [v13 unsignedIntegerValue];

  v14 = [v4 userInfo];

  v15 = [v14 objectForKey:*MEMORY[0x277D76B78]];
  [v15 doubleValue];
  self->_animationDuration = v16;

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:@"WFKeyboardWillChangeNotification" object:self];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

  v4.receiver = self;
  v4.super_class = WFKeyboard;
  [(WFKeyboard *)&v4 dealloc];
}

@end