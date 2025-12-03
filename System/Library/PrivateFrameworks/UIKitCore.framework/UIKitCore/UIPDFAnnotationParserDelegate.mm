@interface UIPDFAnnotationParserDelegate
- (UIPDFAnnotationParserDelegate)init;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation UIPDFAnnotationParserDelegate

- (UIPDFAnnotationParserDelegate)init
{
  v3.receiver = self;
  v3.super_class = UIPDFAnnotationParserDelegate;
  result = [(UIPDFAnnotationParserDelegate *)&v3 init];
  if (result)
  {
    result->_parseError = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UIPDFAnnotationParserDelegate;
  [(UIPDFAnnotationParserDelegate *)&v2 dealloc];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  characters = self->_characters;
  if (characters)
  {
    [(NSMutableString *)characters appendString:characters];
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  components[4] = *MEMORY[0x1E69E9840];
  if ([element isEqualToString:@"UIPDFAnnotation"])
  {
    v10 = [attributes valueForKey:@"type"];
    if ([v10 isEqualToString:@"UIPDFAnnotationTypeCircle"])
    {
      v11 = off_1E70EA2A8;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeFreeText"])
    {
      v11 = off_1E70EA2B8;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeHighlight"])
    {
      v11 = off_1E70EA2C0;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeLine"])
    {
      v11 = off_1E70EA2C8;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeStamp"])
    {
      v11 = off_1E70EA310;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeStrikeOut"])
    {
      v11 = off_1E70EA318;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeText"])
    {
      v11 = off_1E70EA320;
    }

    else if ([v10 isEqualToString:@"UIPDFAnnotationTypeUnderline"])
    {
      v11 = off_1E70EA328;
    }

    else
    {
      if (![v10 isEqualToString:@"UIPDFAnnotationTypePopup"])
      {
        v23 = 0;
        goto LABEL_34;
      }

      v11 = off_1E70EA2F8;
    }

    v23 = objc_alloc_init(*v11);
LABEL_34:
    self->_annotation = v23;
    return;
  }

  if ([element isEqualToString:@"ID"])
  {
LABEL_5:
    self->_characters = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    return;
  }

  if ([element isEqualToString:@"Color"])
  {
    v12 = [attributes valueForKey:@"R"];
    v13 = [attributes valueForKey:@"G"];
    v14 = [attributes valueForKey:@"B"];
    v15 = [attributes valueForKey:@"A"];
    [v12 floatValue];
    components[0] = v16;
    [v13 floatValue];
    components[1] = v17;
    [v14 floatValue];
    components[2] = v18;
    if (v15)
    {
      [v15 floatValue];
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
    }

    components[3] = v20;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v22 = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    [(UIPDFAnnotation *)self->_annotation setColor:v22];
    CGColorRelease(v22);
  }

  else if ([element isEqualToString:@"Contents"] || objc_msgSend(element, "isEqualToString:", @"Tag") || objc_msgSend(element, "isEqualToString:", @"Index") || objc_msgSend(element, "isEqualToString:", @"PopupID") || objc_msgSend(element, "isEqualToString:", @"ParentID"))
  {
    goto LABEL_5;
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if ([element isEqualToString:@"ID"])
  {
    [(UIPDFAnnotation *)self->_annotation setAnnotationID:self->_characters];
  }

  else if ([element isEqualToString:@"Contents"])
  {
    [(UIPDFAnnotation *)self->_annotation setContents:self->_characters];
  }

  else if ([element isEqualToString:@"PopupID"] || objc_msgSend(element, "isEqualToString:", @"ParentID"))
  {
    [(UIPDFAnnotation *)self->_annotation setAssociatedAnnotationID:self->_characters];
  }

  else if ([element isEqualToString:@"Tag"])
  {
    [(UIPDFAnnotation *)self->_annotation setTag:[(NSMutableString *)self->_characters integerValue]];
  }

  else if ([element isEqualToString:@"Index"])
  {
    [(UIPDFAnnotation *)self->_annotation setIndex:[(NSMutableString *)self->_characters integerValue]];
  }

  self->_characters = 0;
}

@end