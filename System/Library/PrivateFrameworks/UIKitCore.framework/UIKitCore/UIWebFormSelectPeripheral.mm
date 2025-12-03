@interface UIWebFormSelectPeripheral
+ (id)createPeripheralWithDOMHTMLSelectElement:(id)element;
- (UIWebFormSelectPeripheral)initWithDOMHTMLSelectElement:(id)element;
- (void)dealloc;
@end

@implementation UIWebFormSelectPeripheral

- (UIWebFormSelectPeripheral)initWithDOMHTMLSelectElement:(id)element
{
  v23.receiver = self;
  v23.super_class = UIWebFormSelectPeripheral;
  v4 = [(UIWebFormSelectPeripheral *)&v23 init];
  v5 = v4;
  if (v4)
  {
    elementCopy = element;
    [(UIWebFormSelectPeripheral *)v4 set_selectionNode:element];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    WebThreadLock();
    multiple = [(DOMHTMLSelectElement *)v5->_selectionNode multiple];
    completeLength = [(DOMHTMLSelectElement *)v5->_selectionNode completeLength];
    if (completeLength)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = completeLength;
      do
      {
        v14 = [-[DOMHTMLSelectElement listItemAtIndex:](v5->_selectionNode listItemAtIndex:{v9), "createSelectedItem"}];
        if (v14)
        {
          v15 = v14;
          isGroup = [v14 isGroup];
          if ((multiple & 1) == 0)
          {
            selected = [v15 selected];
            if (v12 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = v9;
            }

            else
            {
              v18 = v12;
            }

            if (selected)
            {
              v10 = v15;
              v12 = v18;
            }
          }

          v11 |= isGroup;
          [v6 addObject:v15];
        }

        ++v9;
      }

      while (v13 != v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
    {
      v19 = UIWebSelectPopover;
    }

    else
    {
      if (((multiple | v11) & 1) == 0)
      {
        v20 = [[UIWebSelectSinglePicker alloc] initWithDOMHTMLSelectElement:elementCopy allItems:v6];
        goto LABEL_21;
      }

      v19 = UIWebSelectMultiplePicker;
    }

    v20 = [[v19 alloc] initWithDOMHTMLSelectElement:elementCopy cachedItems:v6 singleSelectionItem:v10 singleSelectionIndex:v12 multipleSelection:multiple];
LABEL_21:
    [(UIWebFormSelectPeripheral *)v5 set_selectControl:v20];
  }

  return v5;
}

+ (id)createPeripheralWithDOMHTMLSelectElement:(id)element
{
  v3 = [[UIWebFormSelectPeripheral alloc] initWithDOMHTMLSelectElement:element];

  return v3;
}

- (void)dealloc
{
  [(UIWebFormSelectPeripheral *)self set_selectionNode:0];
  [(UIWebFormSelectPeripheral *)self set_selectControl:0];
  v3.receiver = self;
  v3.super_class = UIWebFormSelectPeripheral;
  [(UIWebFormSelectPeripheral *)&v3 dealloc];
}

@end