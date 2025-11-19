@interface NSMutableAttributedString(REMTTParagraphStyle)
- (void)rem_addParagraphNamedStyle:()REMTTParagraphStyle inRange:;
- (void)rem_removeParagraphNamedStyleFromRange:()REMTTParagraphStyle;
@end

@implementation NSMutableAttributedString(REMTTParagraphStyle)

- (void)rem_addParagraphNamedStyle:()REMTTParagraphStyle inRange:
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = [a1 length];
  if (a4 >= v9)
  {
    a4 = v9;
  }

  if (a4 + a5 > v9)
  {
    a5 = v9 - a4;
  }

  if (a5)
  {
    [a1 beginEditing];
    v10 = [[REMTTParagraphStyle alloc] initWithStyle:a3];
    v11 = v10;
    v12 = TTAttributeNameParagraphStyle;
    if (v10)
    {
      v13 = [(REMTTParagraphStyle *)v10 innerStyle];
      [a1 addAttribute:v12 value:v13 range:{a4, a5}];
    }

    else
    {
      [a1 removeAttribute:TTAttributeNameParagraphStyle range:{a4, a5}];
    }

    [a1 endEditing];
    v14 = +[REMLog crdt];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(REMTTParagraphStyle *)v11 innerStyle];
      v25.location = a4;
      v25.length = a5;
      v16 = NSStringFromRange(v25);
      v18 = 134218498;
      v19 = a1;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "Added REMTTParagraphStyle to this NSMutableAttributedString {self: %p, paragraphStyle: %@, range: %@}", &v18, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)rem_removeParagraphNamedStyleFromRange:()REMTTParagraphStyle
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [a1 length];
  if (a3 >= v7)
  {
    a3 = v7;
  }

  if (a3 + a4 <= v7)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7 - a3;
  }

  if (v8)
  {
    [a1 removeAttribute:TTAttributeNameParagraphStyle range:{a3, v8}];
    v9 = +[REMLog crdt];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17.location = a3;
      v17.length = v8;
      v10 = NSStringFromRange(v17);
      v12 = 134218242;
      v13 = a1;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_INFO, "Remove REMTTParagraphStyle from this NSMutableAttributedString {self: %p, range: %@}", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end