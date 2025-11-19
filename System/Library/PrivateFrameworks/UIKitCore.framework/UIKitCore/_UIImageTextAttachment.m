@interface _UIImageTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (id)_deriveAttribute:(id)a3 inStorage:(id)a4 atIndex:(int64_t)a5;
- (id)_imageAdaptedForTextAtIndex:(int64_t)a3 withAttributes:(id)a4 inContainer:(id)a5 sizeOnly:(BOOL)a6;
- (id)_initWithImage:(id)a3;
@end

@implementation _UIImageTextAttachment

- (id)_initWithImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIImageTextAttachment;
  v5 = [(_UIImageTextAttachment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIImageTextAttachment *)v5 setImage:v4];
  }

  return v6;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
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
    v6 = [(_UIImageTextAttachment *)self _imageAdaptedForTextAtIndex:a6 withAttributes:0 inContainer:a3 sizeOnly:1, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, a5.x, a5.y];
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

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
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
    v7 = [(_UIImageTextAttachment *)self _imageAdaptedForTextAtIndex:0 withAttributes:a3 inContainer:a5 sizeOnly:1, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height, a7.x, a7.y];
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

- (id)_imageAdaptedForTextAtIndex:(int64_t)a3 withAttributes:(id)a4 inContainer:(id)a5 sizeOnly:(BOOL)a6
{
  v73[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [(_UIImageTextAttachment *)self image];
  v13 = [v11 textLayoutManager];
  v14 = v13;
  if (v13)
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke;
    v70[3] = &unk_1E7125A48;
    v71 = v13;
    v15 = __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke(v70);
    if (v15)
    {
      v16 = v15;
      v17 = [v15 textStorage];

      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v18 = [v11 layoutManager];
  v17 = [v18 textStorage];

LABEL_7:
  if ([v12 _isSymbolImage])
  {
    v19 = *off_1E70EC918;
    if (v10)
    {
      [v10 objectForKeyedSubscript:v19];
    }

    else
    {
      [(_UIImageTextAttachment *)self _deriveAttribute:v19 inStorage:v17 atIndex:a3];
    }
    v20 = ;
    if (v20)
    {
      v21 = [UIImageSymbolConfiguration configurationWithFont:v20];
      [UIImageConfiguration _completeConfiguration:v21 fromConfiguration:0];
      v61 = self;
      v22 = a6;
      v23 = a3;
      v24 = v11;
      v25 = v17;
      v26 = v14;
      v28 = v27 = v10;

      v29 = [v12 imageByApplyingSymbolConfiguration:v28];

      v10 = v27;
      v14 = v26;
      v17 = v25;
      v11 = v24;
      a3 = v23;
      a6 = v22;
      self = v61;
      v12 = v29;
    }
  }

  if (!a6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___UIImageTextAttachment__imageAdaptedForTextAtIndex_withAttributes_inContainer_sizeOnly___block_invoke_6;
    aBlock[3] = &unk_1E7125A70;
    v12 = v12;
    v65 = v12;
    v66 = v10;
    v67 = self;
    v68 = v17;
    v69 = a3;
    v30 = _Block_copy(aBlock);
    v31 = [v12 symbolConfiguration];
    v32 = [v12 _automaticSymbolConfiguration];
    v33 = v32;
    v63 = v17;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
    }

    v35 = v34;

    v36 = [v35 configurationByApplyingConfiguration:v31];

    v37 = [v12 _effectiveRenderingModeWithSymbolConfiguration:v36];
    v62 = v35;
    if ([v12 _isMultiColorSymbolImage])
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
          v60 = v10;
          if ((([v12 _isHierarchicalColorSymbolImage] & 1) != 0 || objc_msgSend(v12, "_isPaletteColorSymbolImage")) && v36 && v36[7] && (objc_msgSend(v11, "textView"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "tintColor"), v48 = objc_claimAutoreleasedReturnValue(), v58[2](v58, v48), v40 = objc_claimAutoreleasedReturnValue(), v48, v47, v40))
          {
            v49 = [v36 _colors];
            v42 = [v49 mutableCopy];

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

            v54 = [v12 imageWithConfiguration:v53];

            v36 = v53;
            v12 = v54;
            v10 = v60;
            v17 = v63;
          }

          else
          {
            v55 = [v11 textView];
            v56 = [v55 tintColor];
            v40 = v58[2](v58, v56);

            v17 = v63;
            if (!v40)
            {
              v30 = v58;
              v10 = v60;
              goto LABEL_41;
            }

            [v12 imageWithTintColor:v40 renderingMode:1];
            v12 = v42 = v12;
            v10 = v60;
          }

          v30 = v58;
          goto LABEL_40;
        }
      }

      [v11 textView];
      v38 = v59 = v10;
      v39 = [v38 tintColor];
      v40 = v30[2](v30, v39);

      v10 = v59;
      if (v40)
      {
        v72 = @"tintColor";
        v73[0] = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
        v42 = [UIImageSymbolConfiguration _configurationWithNamedColorStyles:v41];

        v43 = [v12 configuration];
        v44 = [v42 configurationByApplyingConfiguration:v43];
        [v12 imageWithConfiguration:v44];
        v46 = v45 = v30;

        v10 = v59;
        v12 = v46;
        v30 = v45;
        v17 = v63;
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
    v17 = v63;
LABEL_41:
  }

  return v12;
}

- (id)_deriveAttribute:(id)a3 inStorage:(id)a4 atIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 attribute:v7 atIndex:a5 effectiveRange:0];
  v10 = v9;
  if (a5 >= 2 && !v9)
  {
    v10 = [v8 attribute:v7 atIndex:a5 - 1 effectiveRange:0];
  }

  if (!v10)
  {
    v11 = a5 + 1;
    if (v11 >= [v8 length])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v8 attribute:v7 atIndex:v11 effectiveRange:0];
    }
  }

  return v10;
}

@end