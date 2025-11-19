@interface SUDOMElement
+ (CGRect)frameForDOMElement:(id)a3;
- (CGRect)_frame;
- (CGRect)frame;
- (NSString)innerText;
- (SUDOMElement)initWithDOMElement:(id)a3;
- (UIImage)imageRepresentation;
- (id)newImageView;
- (id)newLabelForElementWithText:(id)a3;
- (void)dealloc;
- (void)setProperty:(id)a3 value:(id)a4;
@end

@implementation SUDOMElement

- (SUDOMElement)initWithDOMElement:(id)a3
{
  v4 = [(SUDOMElement *)self init];
  if (v4)
  {
    v4->_element = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDOMElement;
  [(SUDOMElement *)&v3 dealloc];
}

+ (CGRect)frameForDOMElement:(id)a3
{
  WebThreadLock();
  if (a3)
  {
    [a3 innerFrameQuad];
  }

  v4 = 0.0;
  v5 = v4;
  v6 = (0.0 - 0.0);
  v7 = v6;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frame
{
  webView = self->_webView;
  if (webView)
  {
    [(SUDOMElement *)self _frame];
    [(UIWebView *)webView convertRect:0 toView:?];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIImage)imageRepresentation
{
  if (!self->_image)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (WebThreadLock(), v3 = -[DOMElement dataRepresentation:](self->_element, "dataRepresentation:", 0), [v3 length]))
    {
      v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
      self->_image = v4;
      if (v4)
      {
        return self->_image;
      }
    }

    else if (self->_image)
    {
      return self->_image;
    }

    webView = self->_webView;
    [(SUDOMElement *)self _frame];
    v6 = [(UIWebView *)webView newSnapshotWithRect:?];
    if (v6)
    {
      v7 = v6;
      self->_image = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v6];
      CGImageRelease(v7);
    }
  }

  return self->_image;
}

- (NSString)innerText
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(DOMElement *)self->_element innerText];
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];

  return [(NSString *)v3 stringByTrimmingCharactersInSet:v4];
}

- (id)newImageView
{
  v3 = [(SUDOMElement *)self imageRepresentation];
  if (v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
    [(SUDOMElement *)self frame];
    [(UIImage *)v3 setFrame:?];
  }

  return v3;
}

- (id)newLabelForElementWithText:(id)a3
{
  v5 = [-[DOMElement ownerDocument](self->_element "ownerDocument")];
  v6 = [v5 getPropertyValue:@"font-family"];
  v7 = [v5 getPropertyCSSValue:@"font-size"];
  v8 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [v7 getFloatValue:5];
    v8 = v9;
  }

  v10 = [v5 getPropertyCSSValue:@"color"];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 getRGBColorValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  if (v6)
  {
    if (v8 > 0.00000011921)
    {
      v13 = objc_alloc(MEMORY[0x1E69DCC10]);
      [(SUDOMElement *)self frame];
      v12 = [v13 initWithFrame:?];
      [v12 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
      [v12 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "fontWithFamilyName:traits:size:", v6, 2, v8)}];
      [v12 setText:a3];
      v14 = [v11 color];
      if (v14)
      {
        [v12 setTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithCGColor:", v14)}];
      }
    }
  }

  return v12;
}

- (void)setProperty:(id)a3 value:(id)a4
{
  WebThreadLock();
  [(DOMCSSStyleDeclaration *)[(DOMElement *)self->_element style] setProperty:a3 value:a4 priority:@"important"];
  v7 = [(UIWebView *)self->_webView _browserView];

  [v7 forceLayout];
}

- (CGRect)_frame
{
  [-[UIWebView _scrollView](self->_webView "_scrollView")];
  v4 = v3;
  v6 = v5;
  [objc_opt_class() frameForDOMElement:self->_element];
  v10 = v9 - v4;
  v12 = v11 - v6;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v12;
  result.origin.x = v10;
  return result;
}

@end