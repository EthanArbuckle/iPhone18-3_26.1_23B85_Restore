@interface UIPDFAnnotationParserDelegate
- (UIPDFAnnotationParserDelegate)init;
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
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

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  characters = self->_characters;
  if (characters)
  {
    [(NSMutableString *)characters appendString:a4];
  }
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  components[4] = *MEMORY[0x1E69E9840];
  if ([a4 isEqualToString:@"UIPDFAnnotation"])
  {
    v10 = [a7 valueForKey:@"type"];
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

  if ([a4 isEqualToString:@"ID"])
  {
LABEL_5:
    self->_characters = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    return;
  }

  if ([a4 isEqualToString:@"Color"])
  {
    v12 = [a7 valueForKey:@"R"];
    v13 = [a7 valueForKey:@"G"];
    v14 = [a7 valueForKey:@"B"];
    v15 = [a7 valueForKey:@"A"];
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

  else if ([a4 isEqualToString:@"Contents"] || objc_msgSend(a4, "isEqualToString:", @"Tag") || objc_msgSend(a4, "isEqualToString:", @"Index") || objc_msgSend(a4, "isEqualToString:", @"PopupID") || objc_msgSend(a4, "isEqualToString:", @"ParentID"))
  {
    goto LABEL_5;
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if ([a4 isEqualToString:@"ID"])
  {
    [(UIPDFAnnotation *)self->_annotation setAnnotationID:self->_characters];
  }

  else if ([a4 isEqualToString:@"Contents"])
  {
    [(UIPDFAnnotation *)self->_annotation setContents:self->_characters];
  }

  else if ([a4 isEqualToString:@"PopupID"] || objc_msgSend(a4, "isEqualToString:", @"ParentID"))
  {
    [(UIPDFAnnotation *)self->_annotation setAssociatedAnnotationID:self->_characters];
  }

  else if ([a4 isEqualToString:@"Tag"])
  {
    [(UIPDFAnnotation *)self->_annotation setTag:[(NSMutableString *)self->_characters integerValue]];
  }

  else if ([a4 isEqualToString:@"Index"])
  {
    [(UIPDFAnnotation *)self->_annotation setIndex:[(NSMutableString *)self->_characters integerValue]];
  }

  self->_characters = 0;
}

@end