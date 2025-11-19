@interface UIPDFParserDelegate
- (UIPDFParserDelegate)init;
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation UIPDFParserDelegate

- (UIPDFParserDelegate)init
{
  v3.receiver = self;
  v3.super_class = UIPDFParserDelegate;
  result = [(UIPDFParserDelegate *)&v3 init];
  if (result)
  {
    result->_path = 0;
    result->_parserError = 0;
  }

  return result;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = UIPDFParserDelegate;
  [(UIPDFParserDelegate *)&v3 dealloc];
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  if ([a4 isEqualToString:@"UIPDFSelection"])
  {
    self->_path = CGPathCreateMutable();
    return;
  }

  if ([a4 isEqualToString:@"Rectangle"])
  {
    v10 = *MEMORY[0x1E695EFF8];
    self->_p[3] = *MEMORY[0x1E695EFF8];
    self->_p[2] = v10;
    self->_p[1] = v10;
    self->_p[0] = v10;
    return;
  }

  if ([a4 isEqualToString:@"Point"])
  {
    v11 = [a7 valueForKey:@"id"];
    v12 = [a7 valueForKey:@"x"];
    v13 = [a7 valueForKey:@"y"];
    if (v11)
    {
      if (v12)
      {
        v14 = v13;
        if (v13)
        {
          [v12 floatValue];
          v16 = v15;
          [v14 floatValue];
          v18 = v17;
          if ([v11 isEqualToString:@"bottomLeft"])
          {
            v19 = 8;
            p = self->_p;
          }

          else if ([v11 isEqualToString:@"topLeft"])
          {
            p = &self->_p[1];
            v19 = 24;
          }

          else if ([v11 isEqualToString:@"topRight"])
          {
            p = &self->_p[2];
            v19 = 40;
          }

          else
          {
            if (![v11 isEqualToString:@"bottomRight"])
            {
              return;
            }

            p = &self->_p[3];
            v19 = 56;
          }

          p->x = v16;
          *(&self->_p[0].x + v19) = v18;
        }
      }
    }
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if (([a4 isEqualToString:@"UIPDFSelection"] & 1) == 0)
  {
    if ([a4 isEqualToString:@"Rectangle"])
    {
      CGPathAddLines(self->_path, 0, self->_p, 4uLL);
      path = self->_path;

      CGPathCloseSubpath(path);
    }

    else
    {

      [a4 isEqualToString:@"Point"];
    }
  }
}

@end