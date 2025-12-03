@interface UIAccessibilityElementDescription
+ (id)_descriptionWithAXElement:(id)element;
+ (id)_descriptionWithLocalElement:(id)element;
+ (id)descriptionWithElement:(id)element frameInContainerSpaceOrNil:(CGRect)nil;
- (CGRect)frame;
- (CGRect)frameInContainerSpace;
- (UIAccessibilityElementDescription)init;
- (UIAccessibilityElementDescription)initWithCoder:(id)coder;
- (id)convertToAccessibilityElementWithContainer:(id)container;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIAccessibilityElementDescription

+ (id)descriptionWithElement:(id)element frameInContainerSpaceOrNil:(CGRect)nil
{
  height = nil.size.height;
  width = nil.size.width;
  y = nil.origin.y;
  x = nil.origin.x;
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x1E6988D68] elementWithUIElement:elementCopy];
    v11 = [self _descriptionWithAXElement:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self _descriptionWithAXElement:elementCopy];
    }

    else
    {
      [self _descriptionWithLocalElement:elementCopy];
    }
    v11 = ;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectIsEmpty(v14))
  {
    [v11 setFrameInContainerSpace:{x, y, width, height}];
    [v11 setFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  }

  return v11;
}

+ (id)_descriptionWithLocalElement:(id)element
{
  elementCopy = element;
  v4 = objc_alloc_init(UIAccessibilityElementDescription);
  -[UIAccessibilityElementDescription setIsAccessibleElement:](v4, "setIsAccessibleElement:", [elementCopy isAccessibilityElement]);
  -[UIAccessibilityElementDescription setTraits:](v4, "setTraits:", [elementCopy accessibilityTraits]);
  accessibilityLabel = [elementCopy accessibilityLabel];
  [(UIAccessibilityElementDescription *)v4 setLabel:accessibilityLabel];

  accessibilityAttributedLabel = [elementCopy accessibilityAttributedLabel];
  [(UIAccessibilityElementDescription *)v4 setAttributedLabel:accessibilityAttributedLabel];

  accessibilityValue = [elementCopy accessibilityValue];
  [(UIAccessibilityElementDescription *)v4 setValue:accessibilityValue];

  accessibilityAttributedValue = [elementCopy accessibilityAttributedValue];
  [(UIAccessibilityElementDescription *)v4 setAttributedValue:accessibilityAttributedValue];

  accessibilityUserInputLabels = [elementCopy accessibilityUserInputLabels];
  [(UIAccessibilityElementDescription *)v4 setUserInputLabels:accessibilityUserInputLabels];

  accessibilityAttributedUserInputLabels = [elementCopy accessibilityAttributedUserInputLabels];
  [(UIAccessibilityElementDescription *)v4 setAttributedUserInputLabels:accessibilityAttributedUserInputLabels];

  accessibilityIdentifier = [elementCopy accessibilityIdentifier];
  [(UIAccessibilityElementDescription *)v4 setIdentifier:accessibilityIdentifier];

  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), height = v15, width = v14, y = v13, x = v12, (objc_opt_isKindOfClass()))
    {
      [elementCopy frame];
      x = v20;
      y = v21;
      width = v22;
      height = v23;
    }

    goto LABEL_7;
  }

  [elementCopy accessibilityFrameInContainerSpace];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  if (CGRectIsEmpty(v30))
  {
LABEL_7:
    [elementCopy accessibilityFrame];
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
  }

  [(UIAccessibilityElementDescription *)v4 setFrame:v12, v13, v14, v15];
  [(UIAccessibilityElementDescription *)v4 setFrameInContainerSpace:x, y, width, height];

  return v4;
}

+ (id)_descriptionWithAXElement:(id)element
{
  v43 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  v4 = objc_alloc_init(UIAccessibilityElementDescription);
  -[UIAccessibilityElementDescription setIsAccessibleElement:](v4, "setIsAccessibleElement:", [elementCopy isAccessibleElement]);
  -[UIAccessibilityElementDescription setTraits:](v4, "setTraits:", [elementCopy traits]);
  label = [elementCopy label];
  [(UIAccessibilityElementDescription *)v4 setLabel:label];

  value = [elementCopy value];
  [(UIAccessibilityElementDescription *)v4 setValue:value];

  userInputLabels = [elementCopy userInputLabels];
  [(UIAccessibilityElementDescription *)v4 setUserInputLabels:userInputLabels];

  uiElement = [elementCopy uiElement];
  v9 = [uiElement stringWithAXAttribute:5019];
  [(UIAccessibilityElementDescription *)v4 setIdentifier:v9];

  [elementCopy frame];
  v10 = *MEMORY[0x1E695F050];
  v11 = *(MEMORY[0x1E695F050] + 8);
  v12 = *(MEMORY[0x1E695F050] + 16);
  v13 = *(MEMORY[0x1E695F050] + 24);
  [(UIAccessibilityElementDescription *)v4 setFrame:?];
  [(UIAccessibilityElementDescription *)v4 setFrameInContainerSpace:v10, v11, v12, v13];
  path = [elementCopy path];
  if (!CGPathIsEmpty(path))
  {
    v15 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:path];
    [(UIAccessibilityElementDescription *)v4 setPath:v15];
  }

  v37 = v4;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  customActions = [elementCopy customActions];
  v18 = [customActions count];

  if (v18)
  {
    v19 = 0;
    do
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      customActions2 = [elementCopy customActions];
      v22 = [customActions2 objectAtIndexedSubscript:v19];

      v23 = [v22 objectForKeyedSubscript:@"CustomActionIdentifier"];
      [v20 setObject:v23 forKeyedSubscript:@"CustomActionIdentifier"];

      v24 = [v22 objectForKeyedSubscript:@"CustomActionImage"];
      [v20 setObject:v24 forKeyedSubscript:@"CustomActionImage"];

      v25 = [v22 objectForKeyedSubscript:@"CustomActionName"];
      [v20 setObject:v25 forKeyedSubscript:@"CustomActionName"];

      [v16 addObject:v20];
      ++v19;
      customActions3 = [elementCopy customActions];
      v27 = [customActions3 count];
    }

    while (v27 > v19);
  }

  v28 = v4;
  [(UIAccessibilityElementDescription *)v4 setCustomActionsForRemoteDevice:v16];
  if ([elementCopy elementRef])
  {
    Data = _AXUIElementCreateData();
    [(UIAccessibilityElementDescription *)v4 setElementRefData:Data];
  }

  v30 = [&unk_1F1DC2BA8 mutableCopy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = [&unk_1F1DC2B90 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v39;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(&unk_1F1DC2B90);
        }

        v35 = *(*(&v38 + 1) + 8 * i);
        if ([elementCopy supportsAction:{objc_msgSend(v35, "integerValue")}])
        {
          [v30 addObject:v35];
        }
      }

      v32 = [&unk_1F1DC2B90 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v32);
  }

  [(UIAccessibilityElementDescription *)v37 setAccessibilityActionsForRemoteDevice:v30];

  return v28;
}

- (UIAccessibilityElementDescription)init
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementDescription;
  result = [(UIAccessibilityElementDescription *)&v5 init];
  if (result)
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_frame.origin = *MEMORY[0x1E695F050];
    result->_frame.size = v4;
    result->_frameInContainerSpace.origin = v3;
    result->_frameInContainerSpace.size = v4;
  }

  return result;
}

- (UIAccessibilityElementDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = UIAccessibilityElementDescription;
  v5 = [(UIAccessibilityElementDescription *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(UIAccessibilityElementDescription *)v5 setLabel:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedLabel"];
    [(UIAccessibilityElementDescription *)v5 setAttributedLabel:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    [(UIAccessibilityElementDescription *)v5 setValue:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedValue"];
    [(UIAccessibilityElementDescription *)v5 setAttributedValue:v9];

    [coderCopy decodeCGRectForKey:@"frame"];
    [(UIAccessibilityElementDescription *)v5 setFrame:?];
    [coderCopy decodeCGRectForKey:@"frameInContainerSpace"];
    [(UIAccessibilityElementDescription *)v5 setFrameInContainerSpace:?];
    -[UIAccessibilityElementDescription setIsAccessibleElement:](v5, "setIsAccessibleElement:", [coderCopy decodeBoolForKey:@"isAccessibleElement"]);
    -[UIAccessibilityElementDescription setTraits:](v5, "setTraits:", [coderCopy decodeInt64ForKey:@"traits"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    [(UIAccessibilityElementDescription *)v5 setPath:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"customActionsForRemoteDevice"];
    [(UIAccessibilityElementDescription *)v5 setCustomActionsForRemoteDevice:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"elementRefData"];
    [(UIAccessibilityElementDescription *)v5 setElementRefData:v18];

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"accessibilityActionsForRemoteDevice"];
    [(UIAccessibilityElementDescription *)v5 setAccessibilityActionsForRemoteDevice:v22];

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"userInputLabels"];
    [(UIAccessibilityElementDescription *)v5 setUserInputLabels:v26];

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"attributedUserInputLabels"];
    [(UIAccessibilityElementDescription *)v5 setAttributedUserInputLabels:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(UIAccessibilityElementDescription *)v5 setIdentifier:v31];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(UIAccessibilityElementDescription *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  attributedLabel = [(UIAccessibilityElementDescription *)self attributedLabel];
  [coderCopy encodeObject:attributedLabel forKey:@"attributedLabel"];

  value = [(UIAccessibilityElementDescription *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  attributedValue = [(UIAccessibilityElementDescription *)self attributedValue];
  [coderCopy encodeObject:attributedValue forKey:@"attributedValue"];

  [(UIAccessibilityElementDescription *)self frame];
  [coderCopy encodeCGRect:@"frame" forKey:?];
  [(UIAccessibilityElementDescription *)self frameInContainerSpace];
  [coderCopy encodeCGRect:@"frameInContainerSpace" forKey:?];
  [coderCopy encodeBool:-[UIAccessibilityElementDescription isAccessibleElement](self forKey:{"isAccessibleElement"), @"isAccessibleElement"}];
  [coderCopy encodeInt64:-[UIAccessibilityElementDescription traits](self forKey:{"traits"), @"traits"}];
  path = [(UIAccessibilityElementDescription *)self path];
  [coderCopy encodeObject:path forKey:@"path"];

  userInputLabels = [(UIAccessibilityElementDescription *)self userInputLabels];
  [coderCopy encodeObject:userInputLabels forKey:@"userInputLabels"];

  attributedUserInputLabels = [(UIAccessibilityElementDescription *)self attributedUserInputLabels];
  [coderCopy encodeObject:attributedUserInputLabels forKey:@"attributedUserInputLabels"];

  identifier = [(UIAccessibilityElementDescription *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  customActionsForRemoteDevice = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
  [coderCopy encodeObject:customActionsForRemoteDevice forKey:@"customActionsForRemoteDevice"];

  elementRefData = [(UIAccessibilityElementDescription *)self elementRefData];
  [coderCopy encodeObject:elementRefData forKey:@"elementRefData"];

  accessibilityActionsForRemoteDevice = [(UIAccessibilityElementDescription *)self accessibilityActionsForRemoteDevice];
  [coderCopy encodeObject:accessibilityActionsForRemoteDevice forKey:@"accessibilityActionsForRemoteDevice"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(UIAccessibilityElementDescription *)self isAccessibilityElement])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  label = [(UIAccessibilityElementDescription *)self label];
  attributedLabel = [(UIAccessibilityElementDescription *)self attributedLabel];
  value = [(UIAccessibilityElementDescription *)self value];
  attributedValue = [(UIAccessibilityElementDescription *)self attributedValue];
  [(UIAccessibilityElementDescription *)self frame];
  v9 = NSStringFromCGRect(v14);
  [(UIAccessibilityElementDescription *)self frameInContainerSpace];
  v10 = NSStringFromCGRect(v15);
  v11 = [v3 stringWithFormat:@"UIAXElemDesc<%p> isAX:%@ label:'%@' attrLabel:'%@' value:'%@' attrValue:'%@' frame:'%@' localFrame:'%@' ", self, v4, label, attributedLabel, value, attributedValue, v9, v10];

  return v11;
}

- (id)convertToAccessibilityElementWithContainer:(id)container
{
  containerCopy = container;
  v4 = [[UIAccessibilityBridgeElement alloc] initWithAccessibilityContainer:containerCopy];
  [(UIAccessibilityBridgeElement *)v4 setIsAccessibilityElement:[(UIAccessibilityElementDescription *)self isAccessibleElement]];
  [(UIAccessibilityBridgeElement *)v4 setAccessibilityTraits:[(UIAccessibilityElementDescription *)self traits]];
  identifier = [(UIAccessibilityElementDescription *)self identifier];
  [(UIAccessibilityBridgeElement *)v4 setAccessibilityIdentifier:identifier];

  attributedLabel = [(UIAccessibilityElementDescription *)self attributedLabel];

  if (attributedLabel)
  {
    attributedLabel2 = [(UIAccessibilityElementDescription *)self attributedLabel];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityAttributedLabel:attributedLabel2];
  }

  else
  {
    attributedLabel2 = [(UIAccessibilityElementDescription *)self label];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityLabel:attributedLabel2];
  }

  attributedValue = [(UIAccessibilityElementDescription *)self attributedValue];

  if (attributedValue)
  {
    attributedValue2 = [(UIAccessibilityElementDescription *)self attributedValue];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityAttributedValue:attributedValue2];
  }

  else
  {
    attributedValue2 = [(UIAccessibilityElementDescription *)self value];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityValue:attributedValue2];
  }

  [(UIAccessibilityElementDescription *)self frameInContainerSpace];
  if (CGRectIsEmpty(v37))
  {
    [(UIAccessibilityElementDescription *)self frame];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityFrame:?];
  }

  else
  {
    [(UIAccessibilityElementDescription *)self frameInContainerSpace];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityFrameInContainerSpace:?];
  }

  path = [(UIAccessibilityElementDescription *)self path];

  if (path)
  {
    path2 = [(UIAccessibilityElementDescription *)self path];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityPath:path2];
  }

  attributedUserInputLabels = [(UIAccessibilityElementDescription *)self attributedUserInputLabels];

  if (attributedUserInputLabels)
  {
    attributedUserInputLabels2 = [(UIAccessibilityElementDescription *)self attributedUserInputLabels];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityAttributedUserInputLabels:attributedUserInputLabels2];
  }

  else
  {
    attributedUserInputLabels2 = [(UIAccessibilityElementDescription *)self userInputLabels];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityUserInputLabels:attributedUserInputLabels2];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  customActionsForRemoteDevice = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
  v16 = [customActionsForRemoteDevice count];

  if (v16)
  {
    v17 = 0;
    do
    {
      customActionsForRemoteDevice2 = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
      v19 = [customActionsForRemoteDevice2 objectAtIndexedSubscript:v17];

      v20 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v21 = [v19 objectForKeyedSubscript:@"CustomActionImage"];
      v22 = [v20 initWithData:v21];

      v23 = objc_alloc(MEMORY[0x1E69DC5E8]);
      v24 = [v19 objectForKeyedSubscript:@"CustomActionName"];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __80__UIAccessibilityElementDescription_convertToAccessibilityElementWithContainer___block_invoke;
      v33[3] = &unk_1E78AB9E8;
      v34 = v4;
      v35 = v19;
      v25 = v19;
      v26 = [v23 initWithName:v24 image:v22 actionHandler:v33];

      [v14 addObject:v26];
      ++v17;
      customActionsForRemoteDevice3 = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
      v28 = [customActionsForRemoteDevice3 count];
    }

    while (v28 > v17);
  }

  [(UIAccessibilityBridgeElement *)v4 setAccessibilityCustomActions:v14];
  elementRefData = [(UIAccessibilityElementDescription *)self elementRefData];
  [(UIAccessibilityBridgeElement *)v4 setElementRefData:elementRefData];

  accessibilityActionsForRemoteDevice = [(UIAccessibilityElementDescription *)self accessibilityActionsForRemoteDevice];
  [(UIAccessibilityBridgeElement *)v4 setAccessibilityActionsForRemoteDevice:accessibilityActionsForRemoteDevice];

  return v4;
}

uint64_t __80__UIAccessibilityElementDescription_convertToAccessibilityElementWithContainer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axActionHandler];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"CustomActionIdentifier"];
  v4 = [v2 performAXAction:2021 withValue:v3 onBridgeElement:*(a1 + 32)];

  return v4;
}

- (CGRect)frameInContainerSpace
{
  x = self->_frameInContainerSpace.origin.x;
  y = self->_frameInContainerSpace.origin.y;
  width = self->_frameInContainerSpace.size.width;
  height = self->_frameInContainerSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end