@interface OKDynamicAttachment
+ (id)supportedSettings;
- (OKDynamicAttachment)initWithSettings:(id)settings;
- (void)dealloc;
- (void)updateForOwningDynamicProxy:(id)proxy;
@end

@implementation OKDynamicAttachment

- (OKDynamicAttachment)initWithSettings:(id)settings
{
  v17.receiver = self;
  v17.super_class = OKDynamicAttachment;
  v4 = [(OKDynamicAttachment *)&v17 init];
  if (v4)
  {
    [objc_msgSend(settings objectForKey:{@"localOffsetFromCenter", "UIOffsetValue"}];
    v4->_localOffsetFromCenter.horizontal = v5;
    v4->_localOffsetFromCenter.vertical = v6;
    v7 = [settings objectForKey:@"remoteWidgetName"];
    v4->_remoteWidgetName = v7;
    if (v7)
    {
      [objc_msgSend(settings objectForKey:{@"remoteOffsetFromCenter", "UIOffsetValue"}];
    }

    else
    {
      [objc_msgSend(settings objectForKey:{@"remoteAnchorPoint", "CGPointValue"}];
    }

    v4->_remote.offsetFromCenter.horizontal = v8;
    v4->_remote.offsetFromCenter.vertical = v9;
    v10 = [settings objectForKey:@"length"];
    *&v4->_flags = *&v4->_flags & 0xFD | (2 * (v10 != 0));
    [v10 doubleValue];
    v4->_length = v11;
    v12 = [settings objectForKey:@"damping"];
    *&v4->_flags = *&v4->_flags & 0xFB | (4 * (v12 != 0));
    [v12 doubleValue];
    v4->_damping = v13;
    v14 = [settings objectForKey:@"frequency"];
    *&v4->_flags = *&v4->_flags & 0xF7 | (8 * (v14 != 0));
    [v14 doubleValue];
    v4->_frequency = v15;
    *&v4->_flags |= 1u;
  }

  return v4;
}

- (void)dealloc
{
  remoteWidgetName = self->_remoteWidgetName;
  if (remoteWidgetName)
  {

    self->_remoteWidgetName = 0;
  }

  behavior = self->_behavior;
  if (behavior)
  {

    self->_behavior = 0;
  }

  v5.receiver = self;
  v5.super_class = OKDynamicAttachment;
  [(OKDynamicAttachment *)&v5 dealloc];
}

- (void)updateForOwningDynamicProxy:(id)proxy
{
  if ((*&self->_flags & 1) == 0)
  {
    return;
  }

  *&self->_flags &= ~1u;
  if (!self->_remoteWidgetName)
  {
    behavior = self->_behavior;
    if (behavior)
    {

      self->_behavior = 0;
    }

    v9 = [objc_alloc(MEMORY[0x277D751A8]) initWithItem:proxy offsetFromCenter:self->_localOffsetFromCenter.horizontal attachedToAnchor:{self->_localOffsetFromCenter.vertical, self->_remote.offsetFromCenter.horizontal, self->_remote.offsetFromCenter.vertical}];
    goto LABEL_15;
  }

  v5 = [objc_msgSend(proxy "proxiedObject")];
  if (!v5)
  {
    v6 = [objc_msgSend(objc_msgSend(proxy "proxiedObject")];
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    dynamicProxy = [v6 dynamicProxy];
    goto LABEL_11;
  }

  v6 = [v5 subWidgetViewForName:self->_remoteWidgetName recursively:0];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  dynamicProxy = [v6 dynamicProxyForOffsetFromCenter:&self->_remote realRemoteOffsetFromCenter:{self->_remote.offsetFromCenter.horizontal, self->_remote.offsetFromCenter.vertical}];
LABEL_11:
  v10 = dynamicProxy;
  v9 = self->_behavior;
  if (!v10)
  {
    goto LABEL_16;
  }

  if (v9)
  {

    self->_behavior = 0;
  }

  v9 = [objc_alloc(MEMORY[0x277D751A8]) initWithItem:proxy offsetFromCenter:v10 attachedToItem:self->_localOffsetFromCenter.horizontal offsetFromCenter:{self->_localOffsetFromCenter.vertical, self->_remote.offsetFromCenter.horizontal, self->_remote.offsetFromCenter.vertical}];
LABEL_15:
  self->_behavior = v9;
LABEL_16:
  if (!v9)
  {
    return;
  }

  flags = self->_flags;
  if ((flags & 2) == 0)
  {
    if ((*&self->_flags & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    [(UIAttachmentBehavior *)self->_behavior setDamping:self->_damping];
    if ((*&self->_flags & 8) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  [(UIAttachmentBehavior *)v9 setLength:self->_length];
  flags = self->_flags;
  if ((flags & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((flags & 8) == 0)
  {
    return;
  }

LABEL_23:
  frequency = self->_frequency;
  v13 = self->_behavior;

  [(UIAttachmentBehavior *)v13 setFrequency:frequency];
}

+ (id)supportedSettings
{
  v21[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v20[0] = @"localOffsetFromCenter";
  v19[0] = &unk_287AF0440;
  v18[0] = @"type";
  v18[1] = @"default";
  v3 = *MEMORY[0x277D76DA8];
  v4 = *(MEMORY[0x277D76DA8] + 8);
  v19[1] = [MEMORY[0x277CCAE60] valueWithUIOffset:{*MEMORY[0x277D76DA8], v4}];
  v21[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20[1] = @"remoteWidgetName";
  v16[1] = @"default";
  v17[0] = &unk_287AF0458;
  v16[0] = @"type";
  v17[1] = [MEMORY[0x277CBEB68] null];
  v21[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v20[2] = @"remoteOffsetFromCenter";
  v14[1] = @"default";
  v15[0] = &unk_287AF0440;
  v14[0] = @"type";
  v15[1] = [MEMORY[0x277CCAE60] valueWithUIOffset:{v3, v4}];
  v21[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v20[3] = @"remoteAnchorPoint";
  v12[1] = @"default";
  v13[0] = &unk_287AF0470;
  v12[0] = @"type";
  v13[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v21[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v20[4] = @"length";
  v10[0] = @"type";
  v10[1] = @"default";
  v11[0] = &unk_287AF0488;
  v11[1] = &unk_287AF2298;
  v21[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v20[5] = @"damping";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF0488;
  v9[1] = &unk_287AF2298;
  v21[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v20[6] = @"frequency";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF0488;
  v7[1] = &unk_287AF2298;
  v21[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  return [v2 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v21, v20, 7)}];
}

@end