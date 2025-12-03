@interface _UIImageTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (id)_deriveAttribute:(id)attribute inStorage:(id)storage atIndex:(int64_t)index;
- (id)_imageAdaptedForTextAtIndex:(int64_t)index withAttributes:(id)attributes inContainer:(id)container sizeOnly:(BOOL)only;
- (id)_initWithImage:(id)image;
@end

@implementation _UIImageTextAttachment

- (id)_initWithImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = _UIImageTextAttachment;
  v5 = [(_UIImageTextAttachment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIImageTextAttachment *)v5 setImage:imageCopy];
  }

  return v6;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  if (*&self->_flags)
  {
    x = self->_bounds.origin.x;
    y = self->_bounds.origin.y;
    width = self->_bounds.size.width;
    height = self->_bounds.size.height;
  }

  else
  {
    v6 = [(_UIImageTextAttachment *)self _imageAdaptedForTextAtIndex:index withAttributes:0 inContainer:container sizeOnly:1, fragment.origin.x, fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
    v7 = MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
    [v6 size];
    width = v9;
    height = v11;
    if ([v6 hasBaseline])
    {
      [v6 baselineOffsetFromBottom];
      y = y - v13;
    }

    x = *v7;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  if (*&self->_flags)
  {
    x = self->_bounds.origin.x;
    y = self->_bounds.origin.y;
    width = self->_bounds.size.width;
    height = self->_bounds.size.height;
  }

  else
  {
    v7 = [(_UIImageTextAttachment *)self _imageAdaptedForTextAtIndex:0 withAttributes:attributes inContainer:container sizeOnly:1, fragment.origin.x, fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
    v8 = MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
    [v7 size];
    width = v10;
    height = v12;
    if ([v7 hasBaseline])
    {
      [v7 baselineOffsetFromBottom];
      y = y - v14;
    }

    x = *v8;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_imageAdaptedForTextAtIndex:(int64_t)index withAttributes:(id)attributes inContainer:(id)container sizeOnly:(BOOL)only
{
  v73[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  containerCopy = container;
  image = [(_UIImageTextAttachment *)self image];
  textLayoutManager = [containerCopy textLayoutManager];
  v14 = textLayoutManager;
  if (textLayoutManager)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke;
    v70[3] = &unk_1E7125A48;
    v71 = textLayoutManager;
    v15 = __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke(v70);
    if (v15)
    {
      v16 = v15;
      textStorage = [v15 textStorage];

      if (textStorage)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  layoutManager = [containerCopy layoutManager];
  textStorage = [layoutManager textStorage];

LABEL_7:
  if ([image _isSymbolImage])
  {
    v19 = *off_1E70EC918;
    if (attributesCopy)
    {
      [attributesCopy objectForKeyedSubscript:v19];
    }

    else
    {
      [(_UIImageTextAttachment *)self _deriveAttribute:v19 inStorage:textStorage atIndex:index];
    }
    v20 = ;
    if (v20)
    {
      v21 = [UIImageSymbolConfiguration configurationWithFont:v20];
      [UIImageConfiguration _completeConfiguration:v21 fromConfiguration:0];
      selfCopy = self;
      onlyCopy = only;
      indexCopy = index;
      v24 = containerCopy;
      v25 = textStorage;
      v26 = v14;
      v28 = v27 = attributesCopy;

      v29 = [image imageByApplyingSymbolConfiguration:v28];

      attributesCopy = v27;
      v14 = v26;
      textStorage = v25;
      containerCopy = v24;
      index = indexCopy;
      only = onlyCopy;
      self = selfCopy;
      image = v29;
    }
  }

  if (!only)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke_6;
    aBlock[3] = &unk_1E7125A70;
    image = image;
    v65 = image;
    v66 = attributesCopy;
    selfCopy2 = self;
    v68 = textStorage;
    indexCopy2 = index;
    v30 = _Block_copy(aBlock);
    symbolConfiguration = [image symbolConfiguration];
    _automaticSymbolConfiguration = [image _automaticSymbolConfiguration];
    v33 = _automaticSymbolConfiguration;
    v63 = textStorage;
    if (_automaticSymbolConfiguration)
    {
      v34 = _automaticSymbolConfiguration;
    }

    else
    {
      v34 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    }

    v35 = v34;

    v36 = [v35 configurationByApplyingConfiguration:symbolConfiguration];

    v37 = [image _effectiveRenderingModeWithSymbolConfiguration:v36];
    v62 = v35;
    if ([image _isMultiColorSymbolImage])
    {
      if (v37 != 1)
      {
        if (v37 != 2)
        {
          goto LABEL_36;
        }

        if (![v36 _prefersMulticolor])
        {
LABEL_25:
          v60 = attributesCopy;
          if ((([image _isHierarchicalColorSymbolImage] & 1) != 0 || objc_msgSend(image, "_isPaletteColorSymbolImage")) && v36 && v36[7] && (objc_msgSend(containerCopy, "textView"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "tintColor"), v48 = objc_claimAutoreleasedReturnValue(), v58[2](v58, v48), v40 = objc_claimAutoreleasedReturnValue(), v48, v47, v40))
          {
            _colors = [v36 _colors];
            v42 = [_colors mutableCopy];

            if ([v42 count])
            {
              v50 = 0;
              do
              {
                v51 = [v42 objectAtIndexedSubscript:v50];
                v52 = +[UIColor tintColor];

                if (v51 == v52)
                {
                  [v42 setObject:v40 atIndexedSubscript:v50];
                }

                ++v50;
              }

              while (v50 < [v42 count]);
            }

            v53 = [v36 _configurationByReplacingColors:v42];

            v54 = [image imageWithConfiguration:v53];

            v36 = v53;
            image = v54;
            attributesCopy = v60;
            textStorage = v63;
          }

          else
          {
            textView = [containerCopy textView];
            tintColor = [textView tintColor];
            v40 = v58[2](v58, tintColor);

            textStorage = v63;
            if (!v40)
            {
              v30 = v58;
              attributesCopy = v60;
              goto LABEL_41;
            }

            [image imageWithTintColor:v40 renderingMode:1];
            image = v42 = image;
            attributesCopy = v60;
          }

          v30 = v58;
          goto LABEL_40;
        }
      }

      [containerCopy textView];
      v38 = v59 = attributesCopy;
      tintColor2 = [v38 tintColor];
      v40 = v30[2](v30, tintColor2);

      attributesCopy = v59;
      if (v40)
      {
        v72 = @"tintColor";
        v73[0] = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
        v42 = [UIImageSymbolConfiguration _configurationWithNamedColorStyles:v41];

        configuration = [image configuration];
        v44 = [v42 configurationByApplyingConfiguration:configuration];
        [image imageWithConfiguration:v44];
        v46 = v45 = v30;

        attributesCopy = v59;
        image = v46;
        v30 = v45;
        textStorage = v63;
LABEL_40:

        goto LABEL_41;
      }
    }

    if (v37 == 2)
    {
      goto LABEL_25;
    }

LABEL_36:
    v40 = 0;
    textStorage = v63;
LABEL_41:
  }

  return image;
}

- (id)_deriveAttribute:(id)attribute inStorage:(id)storage atIndex:(int64_t)index
{
  attributeCopy = attribute;
  storageCopy = storage;
  v9 = [storageCopy attribute:attributeCopy atIndex:index effectiveRange:0];
  v10 = v9;
  if (index >= 2 && !v9)
  {
    v10 = [storageCopy attribute:attributeCopy atIndex:index - 1 effectiveRange:0];
  }

  if (!v10)
  {
    v11 = index + 1;
    if (v11 >= [storageCopy length])
    {
      v10 = 0;
    }

    else
    {
      v10 = [storageCopy attribute:attributeCopy atIndex:v11 effectiveRange:0];
    }
  }

  return v10;
}

@end