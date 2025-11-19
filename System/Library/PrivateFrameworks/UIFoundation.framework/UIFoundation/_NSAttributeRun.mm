@interface _NSAttributeRun
- (_NSAttributeRun)initWithTextStorage:(id)a3 range:(_NSRange)a4;
- (_NSRange)range;
- (void)dealloc;
- (void)restoreAttributesOfTextStorage:(id)a3;
@end

@implementation _NSAttributeRun

- (_NSAttributeRun)initWithTextStorage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v15 = 0;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = _NSAttributeRun;
  v7 = [(_NSAttributeRun *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_range.location = location;
    v7->_range.length = length;
    v7->_attributesArray = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{-[_NSAttributeRun zone](v7, "zone")), "init"}];
    if (location < location + length)
    {
      v9 = location;
      do
      {
        v10 = [a3 attributesAtIndex:v9 longestEffectiveRange:&v15 inRange:{location, length}];
        v11 = [_NSAttributes alloc];
        v12 = [(_NSAttributes *)v11 initWithAttributes:v10 range:v15, v16];
        [(NSMutableArray *)v8->_attributesArray addObject:v12];

        v9 += v16;
      }

      while (v9 < location + length);
    }
  }

  return v8;
}

- (void)dealloc
{
  self->_attributesArray = 0;
  v3.receiver = self;
  v3.super_class = _NSAttributeRun;
  [(_NSAttributeRun *)&v3 dealloc];
}

- (void)restoreAttributesOfTextStorage:(id)a3
{
  v5 = [(NSMutableArray *)self->_attributesArray count];
  [a3 beginEditing];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      [-[NSMutableArray objectAtIndex:](self->_attributesArray objectAtIndex:{i), "setAttributesInTextStorage:", a3}];
    }
  }

  [a3 endEditing];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end