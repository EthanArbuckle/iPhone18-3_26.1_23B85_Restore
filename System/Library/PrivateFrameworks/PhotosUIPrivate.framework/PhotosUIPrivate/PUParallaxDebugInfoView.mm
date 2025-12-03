@interface PUParallaxDebugInfoView
- (PUParallaxDebugInfoView)initWithViewModel:(id)model;
- (PUParallaxLayerStackViewModel)viewModel;
- (UILabel)debugHUDLabel;
- (id)_rectViewForIdentifier:(id)identifier;
- (void)_layoutWithCurrentLayoutInfo;
- (void)_updateDebugHUDString;
- (void)displayAdditionalDebugInfo:(id)info;
- (void)layoutWithInfo:(id)info;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAdditionalDebugInfo:(id)info;
- (void)setCurrentLayoutInfo:(id)info;
- (void)setDebugHUDString:(id)string;
- (void)setDebugTimeRect:(id)rect;
@end

@implementation PUParallaxDebugInfoView

- (PUParallaxLayerStackViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if ((changeCopy & 0x200) != 0)
  {
    [(PUParallaxDebugInfoView *)self _layoutWithCurrentLayoutInfo];
  }

  if ((*&changeCopy & 0xC0000) != 0)
  {
    [(PUParallaxDebugInfoView *)self _invalidateDebugHUDString];
  }
}

- (void)_layoutWithCurrentLayoutInfo
{
  currentLayoutInfo = [(PUParallaxDebugInfoView *)self currentLayoutInfo];
  if (currentLayoutInfo && (-[PUParallaxDebugInfoView viewModel](self, "viewModel"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 showsDebugHUD], v4, (v5 & 1) != 0))
  {
    [(PUParallaxDebugInfoView *)self setHidden:0];
    [currentLayoutInfo containerFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(PUParallaxDebugInfoView *)self _rectViewForIdentifier:@"timeFrame"];
    debugTimeRect = [(PUParallaxDebugInfoView *)self debugTimeRect];
    [debugTimeRect CGRectValue];
    [v14 setFrame:?];

    [currentLayoutInfo additionalTransform];
    v58 = v59;
    [(PUParallaxDebugInfoView *)self setTransform:&v58];
    debugHUDString = [(PUParallaxDebugInfoView *)self debugHUDString];
    debugHUDLabel = [(PUParallaxDebugInfoView *)self debugHUDLabel];
    [debugHUDLabel setText:debugHUDString];

    debugHUDLabel2 = [(PUParallaxDebugInfoView *)self debugHUDLabel];
    superview = [debugHUDLabel2 superview];

    debugHUDLabel3 = [(PUParallaxDebugInfoView *)self debugHUDLabel];
    [debugHUDLabel3 sizeThatFits:{v11, v13}];
    v22 = v21;

    deviceOrientation = [currentLayoutInfo deviceOrientation];
    v24 = v7;
    v25 = v9;
    v26 = v11;
    v27 = v13;
    if ((deviceOrientation - 3) > 1)
    {
      MaxY = CGRectGetMaxY(*&v24);
    }

    else
    {
      MaxY = CGRectGetMaxX(*&v24);
    }

    v29 = MaxY;
    [superview safeAreaInsets];
    v31 = v30;
    v60.origin.x = v7;
    v60.origin.y = v9;
    v60.size.width = v11;
    v60.size.height = v13;
    Width = CGRectGetWidth(v60);
    deviceOrientation2 = [currentLayoutInfo deviceOrientation];
    [currentLayoutInfo containerFrame];
    PUPosterAdditionalTransformForDeviceOrientationAndContainerFrame(deviceOrientation2, &v58);
    v61.origin.x = v31;
    v61.origin.y = v29 + -250.0 - v22;
    v61.size.width = Width;
    v61.size.height = v22;
    v62 = CGRectApplyAffineTransform(v61, &v58);
    x = v62.origin.x;
    y = v62.origin.y;
    v36 = v62.size.width;
    height = v62.size.height;
    debugHUDLabel4 = [(PUParallaxDebugInfoView *)self debugHUDLabel];
    [debugHUDLabel4 setFrame:{x, y, v36, height}];

    [currentLayoutInfo visibleFrame];
    [currentLayoutInfo viewFrameForLayerFrame:?];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [currentLayoutInfo additionalContentTransform];
    v63.origin.x = v40;
    v63.origin.y = v42;
    v63.size.width = v44;
    v63.size.height = v46;
    v64 = CGRectApplyAffineTransform(v63, &v58);
    CGRectGetHeight(v64);
    PXRectWithOriginAndSize();
    [currentLayoutInfo visibilityAmount];
    v57 = v47;
    PXRectByLinearlyInterpolatingRects();
    [currentLayoutInfo visibilityEdge];
    PXRectWithSizeAlignedToRectEdges();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    maskLayer = [(PUParallaxDebugInfoView *)self maskLayer];
    [maskLayer setFrame:{v49, v51, v53, v55}];

    PXRectWithSize();
    [(PUParallaxDebugInfoView *)self setBounds:?];
    PXRectGetCenter();
    [(PUParallaxDebugInfoView *)self setCenter:?];
  }

  else
  {
    [(PUParallaxDebugInfoView *)self setHidden:1];
  }
}

- (void)setDebugTimeRect:(id)rect
{
  rectCopy = rect;
  debugTimeRect = self->_debugTimeRect;
  if (debugTimeRect != rectCopy)
  {
    v8 = rectCopy;
    debugTimeRect = [debugTimeRect isEqual:rectCopy];
    rectCopy = v8;
    if ((debugTimeRect & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_debugTimeRect;
      self->_debugTimeRect = v6;

      debugTimeRect = [(PUParallaxDebugInfoView *)self _layoutWithCurrentLayoutInfo];
      rectCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](debugTimeRect, rectCopy);
}

- (void)setDebugHUDString:(id)string
{
  stringCopy = string;
  debugHUDString = self->_debugHUDString;
  if (debugHUDString != stringCopy)
  {
    v8 = stringCopy;
    debugHUDString = [debugHUDString isEqual:stringCopy];
    stringCopy = v8;
    if ((debugHUDString & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_debugHUDString;
      self->_debugHUDString = v6;

      debugHUDString = [(PUParallaxDebugInfoView *)self _layoutWithCurrentLayoutInfo];
      stringCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](debugHUDString, stringCopy);
}

- (void)_updateDebugHUDString
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  viewModel = [(PUParallaxDebugInfoView *)self viewModel];
  showsDebugHUD = [viewModel showsDebugHUD];

  if (showsDebugHUD)
  {
    viewModel2 = [(PUParallaxDebugInfoView *)selfCopy viewModel];
    debugHUDRepresentation = [viewModel2 debugHUDRepresentation];

    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [v7 appendFormat:@"pid: %d\n", objc_msgSend(processInfo, "processIdentifier")];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = debugHUDRepresentation;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          [v7 appendFormat:@"\n%@ : %@", v14, v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    additionalDebugInfo = [(PUParallaxDebugInfoView *)selfCopy additionalDebugInfo];
    if ([additionalDebugInfo count])
    {
      v24 = selfCopy;
      [v7 appendString:@"\n"];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = additionalDebugInfo;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v25 + 1) + 8 * j);
            v23 = [v17 objectForKeyedSubscript:v22];
            [v7 appendFormat:@"\n%@ : %@", v22, v23];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }

      selfCopy = v24;
    }

    [(PUParallaxDebugInfoView *)selfCopy setDebugHUDString:v7];
  }
}

- (void)setAdditionalDebugInfo:(id)info
{
  infoCopy = info;
  additionalDebugInfo = self->_additionalDebugInfo;
  if (additionalDebugInfo != infoCopy)
  {
    v8 = infoCopy;
    additionalDebugInfo = [additionalDebugInfo isEqual:infoCopy];
    infoCopy = v8;
    if ((additionalDebugInfo & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_additionalDebugInfo;
      self->_additionalDebugInfo = v6;

      additionalDebugInfo = [(PUParallaxDebugInfoView *)self _invalidateDebugHUDString];
      infoCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](additionalDebugInfo, infoCopy);
}

- (void)displayAdditionalDebugInfo:(id)info
{
  infoCopy = info;
  additionalDebugInfo = [(PUParallaxDebugInfoView *)self additionalDebugInfo];
  v6 = [additionalDebugInfo mutableCopy];

  [v6 addEntriesFromDictionary:infoCopy];
  [(PUParallaxDebugInfoView *)self setAdditionalDebugInfo:v6];
}

- (UILabel)debugHUDLabel
{
  debugHUDLabel = self->_debugHUDLabel;
  if (!debugHUDLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PUParallaxDebugInfoView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)v5 setFont:v6];

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v5 setBackgroundColor:v7];

    systemDarkOrangeColor = [MEMORY[0x1E69DC888] systemDarkOrangeColor];
    [(UILabel *)v5 setTextColor:systemDarkOrangeColor];

    [(UILabel *)v5 setUserInteractionEnabled:0];
    layer = [(UILabel *)v5 layer];
    [layer setZPosition:1.79769313e308];

    [(UILabel *)v5 setNumberOfLines:0];
    [(PUParallaxDebugInfoView *)self addSubview:v5];
    v10 = self->_debugHUDLabel;
    self->_debugHUDLabel = v5;

    debugHUDLabel = self->_debugHUDLabel;
  }

  return debugHUDLabel;
}

- (id)_rectViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rectViewsByIdentifier = [(PUParallaxDebugInfoView *)self rectViewsByIdentifier];
  v6 = [rectViewsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v7 = [PUParallaxDebugInfoRectView alloc];
    v6 = [(PUParallaxDebugInfoRectView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PUParallaxDebugInfoRectView *)v6 setIdentifier:identifierCopy];
    [(PUParallaxDebugInfoView *)self addSubview:v6];
    rectViewsByIdentifier2 = [(PUParallaxDebugInfoView *)self rectViewsByIdentifier];
    [rectViewsByIdentifier2 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  return v6;
}

- (void)setCurrentLayoutInfo:(id)info
{
  infoCopy = info;
  v5 = self->_currentLayoutInfo;
  v6 = v5;
  if (v5 == infoCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerLayoutInfo *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLayoutInfo, info);
      [(PUParallaxDebugInfoView *)self _layoutWithCurrentLayoutInfo];
    }
  }
}

- (void)layoutWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = PUParallaxDebugInfoView;
  infoCopy = info;
  [(PUParallaxLayerView *)&v5 layoutWithInfo:infoCopy];
  [(PUParallaxDebugInfoView *)self setCurrentLayoutInfo:infoCopy, v5.receiver, v5.super_class];
}

- (PUParallaxDebugInfoView)initWithViewModel:(id)model
{
  v38[3] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v36.receiver = self;
  v36.super_class = PUParallaxDebugInfoView;
  v5 = [(PUParallaxDebugInfoView *)&v36 init];
  if (v5)
  {
    if ([modelCopy environment] == 2)
    {
      layer = [MEMORY[0x1E6979398] layer];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      -[CALayer setBackgroundColor:](layer, "setBackgroundColor:", [blackColor CGColor]);

      v37[0] = @"bounds";
      null = [MEMORY[0x1E695DFB0] null];
      v38[0] = null;
      v37[1] = @"position";
      null2 = [MEMORY[0x1E695DFB0] null];
      v38[1] = null2;
      v37[2] = @"frame";
      null3 = [MEMORY[0x1E695DFB0] null];
      v38[2] = null3;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
      [(CALayer *)layer setActions:v11];

      layer2 = [(PUParallaxDebugInfoView *)v5 layer];
      [layer2 setMask:layer];

      maskLayer = v5->_maskLayer;
      v5->_maskLayer = layer;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    additionalDebugInfo = v5->_additionalDebugInfo;
    v5->_additionalDebugInfo = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rectViewsByIdentifier = v5->_rectViewsByIdentifier;
    v5->_rectViewsByIdentifier = v16;

    objc_storeWeak(&v5->_viewModel, modelCopy);
    viewModel = [(PUParallaxDebugInfoView *)v5 viewModel];
    currentLayerStack = [viewModel currentLayerStack];
    layout = [currentLayerStack layout];
    [layout adaptiveTimeFrame];
    viewModel2 = [(PUParallaxDebugInfoView *)v5 viewModel];
    currentLayerStack2 = [viewModel2 currentLayerStack];
    layout2 = [currentLayerStack2 layout];
    [layout2 imageSize];
    PXRectWithOriginAndSize();
    PXRectFlippedVertically();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v35[0] = v25;
    v35[1] = v27;
    v35[2] = v29;
    v35[3] = v31;
    v32 = [MEMORY[0x1E696B098] valueWithBytes:v35 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    debugTimeRect = v5->_debugTimeRect;
    v5->_debugTimeRect = v32;

    [modelCopy registerChangeObserver:v5 context:"ViewModelObservationContext"];
    [(PUParallaxDebugInfoView *)v5 _invalidateDebugHUDString];
  }

  return v5;
}

@end