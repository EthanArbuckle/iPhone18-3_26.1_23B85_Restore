@interface UIAccessibilityElementDescription
+ (id)_descriptionWithAXElement:(id)a3;
+ (id)_descriptionWithLocalElement:(id)a3;
+ (id)descriptionWithElement:(id)a3 frameInContainerSpaceOrNil:(CGRect)a4;
- (CGRect)frame;
- (CGRect)frameInContainerSpace;
- (UIAccessibilityElementDescription)init;
- (UIAccessibilityElementDescription)initWithCoder:(id)a3;
- (id)convertToAccessibilityElementWithContainer:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIAccessibilityElementDescription

+ (id)descriptionWithElement:(id)a3 frameInContainerSpaceOrNil:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x1E6988D68] elementWithUIElement:v9];
    v11 = [a1 _descriptionWithAXElement:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _descriptionWithAXElement:v9];
    }

    else
    {
      [a1 _descriptionWithLocalElement:v9];
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

+ (id)_descriptionWithLocalElement:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIAccessibilityElementDescription);
  -[UIAccessibilityElementDescription setIsAccessibleElement:](v4, "setIsAccessibleElement:", [v3 isAccessibilityElement]);
  -[UIAccessibilityElementDescription setTraits:](v4, "setTraits:", [v3 accessibilityTraits]);
  v5 = [v3 accessibilityLabel];
  [(UIAccessibilityElementDescription *)v4 setLabel:v5];

  v6 = [v3 accessibilityAttributedLabel];
  [(UIAccessibilityElementDescription *)v4 setAttributedLabel:v6];

  v7 = [v3 accessibilityValue];
  [(UIAccessibilityElementDescription *)v4 setValue:v7];

  v8 = [v3 accessibilityAttributedValue];
  [(UIAccessibilityElementDescription *)v4 setAttributedValue:v8];

  v9 = [v3 accessibilityUserInputLabels];
  [(UIAccessibilityElementDescription *)v4 setUserInputLabels:v9];

  v10 = [v3 accessibilityAttributedUserInputLabels];
  [(UIAccessibilityElementDescription *)v4 setAttributedUserInputLabels:v10];

  v11 = [v3 accessibilityIdentifier];
  [(UIAccessibilityElementDescription *)v4 setIdentifier:v11];

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
      [v3 frame];
      x = v20;
      y = v21;
      width = v22;
      height = v23;
    }

    goto LABEL_7;
  }

  [v3 accessibilityFrameInContainerSpace];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  if (CGRectIsEmpty(v30))
  {
LABEL_7:
    [v3 accessibilityFrame];
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
  }

  [(UIAccessibilityElementDescription *)v4 setFrame:v12, v13, v14, v15];
  [(UIAccessibilityElementDescription *)v4 setFrameInContainerSpace:x, y, width, height];

  return v4;
}

+ (id)_descriptionWithAXElement:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(UIAccessibilityElementDescription);
  -[UIAccessibilityElementDescription setIsAccessibleElement:](v4, "setIsAccessibleElement:", [v3 isAccessibleElement]);
  -[UIAccessibilityElementDescription setTraits:](v4, "setTraits:", [v3 traits]);
  v5 = [v3 label];
  [(UIAccessibilityElementDescription *)v4 setLabel:v5];

  v6 = [v3 value];
  [(UIAccessibilityElementDescription *)v4 setValue:v6];

  v7 = [v3 userInputLabels];
  [(UIAccessibilityElementDescription *)v4 setUserInputLabels:v7];

  v8 = [v3 uiElement];
  v9 = [v8 stringWithAXAttribute:5019];
  [(UIAccessibilityElementDescription *)v4 setIdentifier:v9];

  [v3 frame];
  v10 = *MEMORY[0x1E695F050];
  v11 = *(MEMORY[0x1E695F050] + 8);
  v12 = *(MEMORY[0x1E695F050] + 16);
  v13 = *(MEMORY[0x1E695F050] + 24);
  [(UIAccessibilityElementDescription *)v4 setFrame:?];
  [(UIAccessibilityElementDescription *)v4 setFrameInContainerSpace:v10, v11, v12, v13];
  v14 = [v3 path];
  if (!CGPathIsEmpty(v14))
  {
    v15 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v14];
    [(UIAccessibilityElementDescription *)v4 setPath:v15];
  }

  v37 = v4;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [v3 customActions];
  v18 = [v17 count];

  if (v18)
  {
    v19 = 0;
    do
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = [v3 customActions];
      v22 = [v21 objectAtIndexedSubscript:v19];

      v23 = [v22 objectForKeyedSubscript:@"CustomActionIdentifier"];
      [v20 setObject:v23 forKeyedSubscript:@"CustomActionIdentifier"];

      v24 = [v22 objectForKeyedSubscript:@"CustomActionImage"];
      [v20 setObject:v24 forKeyedSubscript:@"CustomActionImage"];

      v25 = [v22 objectForKeyedSubscript:@"CustomActionName"];
      [v20 setObject:v25 forKeyedSubscript:@"CustomActionName"];

      [v16 addObject:v20];
      ++v19;
      v26 = [v3 customActions];
      v27 = [v26 count];
    }

    while (v27 > v19);
  }

  v28 = v4;
  [(UIAccessibilityElementDescription *)v4 setCustomActionsForRemoteDevice:v16];
  if ([v3 elementRef])
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
        if ([v3 supportsAction:{objc_msgSend(v35, "integerValue")}])
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

- (UIAccessibilityElementDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = UIAccessibilityElementDescription;
  v5 = [(UIAccessibilityElementDescription *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(UIAccessibilityElementDescription *)v5 setLabel:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedLabel"];
    [(UIAccessibilityElementDescription *)v5 setAttributedLabel:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    [(UIAccessibilityElementDescription *)v5 setValue:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedValue"];
    [(UIAccessibilityElementDescription *)v5 setAttributedValue:v9];

    [v4 decodeCGRectForKey:@"frame"];
    [(UIAccessibilityElementDescription *)v5 setFrame:?];
    [v4 decodeCGRectForKey:@"frameInContainerSpace"];
    [(UIAccessibilityElementDescription *)v5 setFrameInContainerSpace:?];
    -[UIAccessibilityElementDescription setIsAccessibleElement:](v5, "setIsAccessibleElement:", [v4 decodeBoolForKey:@"isAccessibleElement"]);
    -[UIAccessibilityElementDescription setTraits:](v5, "setTraits:", [v4 decodeInt64ForKey:@"traits"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    [(UIAccessibilityElementDescription *)v5 setPath:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"customActionsForRemoteDevice"];
    [(UIAccessibilityElementDescription *)v5 setCustomActionsForRemoteDevice:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"elementRefData"];
    [(UIAccessibilityElementDescription *)v5 setElementRefData:v18];

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"accessibilityActionsForRemoteDevice"];
    [(UIAccessibilityElementDescription *)v5 setAccessibilityActionsForRemoteDevice:v22];

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"userInputLabels"];
    [(UIAccessibilityElementDescription *)v5 setUserInputLabels:v26];

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"attributedUserInputLabels"];
    [(UIAccessibilityElementDescription *)v5 setAttributedUserInputLabels:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(UIAccessibilityElementDescription *)v5 setIdentifier:v31];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIAccessibilityElementDescription *)self label];
  [v4 encodeObject:v5 forKey:@"label"];

  v6 = [(UIAccessibilityElementDescription *)self attributedLabel];
  [v4 encodeObject:v6 forKey:@"attributedLabel"];

  v7 = [(UIAccessibilityElementDescription *)self value];
  [v4 encodeObject:v7 forKey:@"value"];

  v8 = [(UIAccessibilityElementDescription *)self attributedValue];
  [v4 encodeObject:v8 forKey:@"attributedValue"];

  [(UIAccessibilityElementDescription *)self frame];
  [v4 encodeCGRect:@"frame" forKey:?];
  [(UIAccessibilityElementDescription *)self frameInContainerSpace];
  [v4 encodeCGRect:@"frameInContainerSpace" forKey:?];
  [v4 encodeBool:-[UIAccessibilityElementDescription isAccessibleElement](self forKey:{"isAccessibleElement"), @"isAccessibleElement"}];
  [v4 encodeInt64:-[UIAccessibilityElementDescription traits](self forKey:{"traits"), @"traits"}];
  v9 = [(UIAccessibilityElementDescription *)self path];
  [v4 encodeObject:v9 forKey:@"path"];

  v10 = [(UIAccessibilityElementDescription *)self userInputLabels];
  [v4 encodeObject:v10 forKey:@"userInputLabels"];

  v11 = [(UIAccessibilityElementDescription *)self attributedUserInputLabels];
  [v4 encodeObject:v11 forKey:@"attributedUserInputLabels"];

  v12 = [(UIAccessibilityElementDescription *)self identifier];
  [v4 encodeObject:v12 forKey:@"identifier"];

  v13 = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
  [v4 encodeObject:v13 forKey:@"customActionsForRemoteDevice"];

  v14 = [(UIAccessibilityElementDescription *)self elementRefData];
  [v4 encodeObject:v14 forKey:@"elementRefData"];

  v15 = [(UIAccessibilityElementDescription *)self accessibilityActionsForRemoteDevice];
  [v4 encodeObject:v15 forKey:@"accessibilityActionsForRemoteDevice"];
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

  v5 = [(UIAccessibilityElementDescription *)self label];
  v6 = [(UIAccessibilityElementDescription *)self attributedLabel];
  v7 = [(UIAccessibilityElementDescription *)self value];
  v8 = [(UIAccessibilityElementDescription *)self attributedValue];
  [(UIAccessibilityElementDescription *)self frame];
  v9 = NSStringFromCGRect(v14);
  [(UIAccessibilityElementDescription *)self frameInContainerSpace];
  v10 = NSStringFromCGRect(v15);
  v11 = [v3 stringWithFormat:@"UIAXElemDesc<%p> isAX:%@ label:'%@' attrLabel:'%@' value:'%@' attrValue:'%@' frame:'%@' localFrame:'%@' ", self, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)convertToAccessibilityElementWithContainer:(id)a3
{
  v32 = a3;
  v4 = [[UIAccessibilityBridgeElement alloc] initWithAccessibilityContainer:v32];
  [(UIAccessibilityBridgeElement *)v4 setIsAccessibilityElement:[(UIAccessibilityElementDescription *)self isAccessibleElement]];
  [(UIAccessibilityBridgeElement *)v4 setAccessibilityTraits:[(UIAccessibilityElementDescription *)self traits]];
  v5 = [(UIAccessibilityElementDescription *)self identifier];
  [(UIAccessibilityBridgeElement *)v4 setAccessibilityIdentifier:v5];

  v6 = [(UIAccessibilityElementDescription *)self attributedLabel];

  if (v6)
  {
    v7 = [(UIAccessibilityElementDescription *)self attributedLabel];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityAttributedLabel:v7];
  }

  else
  {
    v7 = [(UIAccessibilityElementDescription *)self label];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityLabel:v7];
  }

  v8 = [(UIAccessibilityElementDescription *)self attributedValue];

  if (v8)
  {
    v9 = [(UIAccessibilityElementDescription *)self attributedValue];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityAttributedValue:v9];
  }

  else
  {
    v9 = [(UIAccessibilityElementDescription *)self value];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityValue:v9];
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

  v10 = [(UIAccessibilityElementDescription *)self path];

  if (v10)
  {
    v11 = [(UIAccessibilityElementDescription *)self path];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityPath:v11];
  }

  v12 = [(UIAccessibilityElementDescription *)self attributedUserInputLabels];

  if (v12)
  {
    v13 = [(UIAccessibilityElementDescription *)self attributedUserInputLabels];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityAttributedUserInputLabels:v13];
  }

  else
  {
    v13 = [(UIAccessibilityElementDescription *)self userInputLabels];
    [(UIAccessibilityBridgeElement *)v4 setAccessibilityUserInputLabels:v13];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
  v16 = [v15 count];

  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
      v19 = [v18 objectAtIndexedSubscript:v17];

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
      v27 = [(UIAccessibilityElementDescription *)self customActionsForRemoteDevice];
      v28 = [v27 count];
    }

    while (v28 > v17);
  }

  [(UIAccessibilityBridgeElement *)v4 setAccessibilityCustomActions:v14];
  v29 = [(UIAccessibilityElementDescription *)self elementRefData];
  [(UIAccessibilityBridgeElement *)v4 setElementRefData:v29];

  v30 = [(UIAccessibilityElementDescription *)self accessibilityActionsForRemoteDevice];
  [(UIAccessibilityBridgeElement *)v4 setAccessibilityActionsForRemoteDevice:v30];

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