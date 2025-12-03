@interface NSTextTableBlock
+ (void)initialize;
- (CGRect)boundsRectForContentRect:(CGRect)rect inRect:(CGRect)inRect textContainer:(id)container characterRange:(_NSRange)range;
- (CGRect)rectForLayoutAtPoint:(CGPoint)point inRect:(CGRect)rect textContainer:(id)container characterRange:(_NSRange)range;
- (NSTextTableBlock)init;
- (NSTextTableBlock)initWithCoder:(id)coder;
- (NSTextTableBlock)initWithTable:(NSTextTable *)table startingRow:(NSInteger)row rowSpan:(NSInteger)rowSpan startingColumn:(NSInteger)col columnSpan:(NSInteger)colSpan;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTextTableBlock

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    [NSTextTableBlock setVersion:1];
    __NSTextTableBlockClass = self;
  }
}

- (NSTextTableBlock)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Non-designated initializer called for NSTextTableBlock"];
  v3 = objc_alloc_init(NSTextTable);

  return [(NSTextTableBlock *)self initWithTable:v3 startingRow:0 rowSpan:9 startingColumn:9 columnSpan:0];
}

- (NSTextTableBlock)initWithTable:(NSTextTable *)table startingRow:(NSInteger)row rowSpan:(NSInteger)rowSpan startingColumn:(NSInteger)col columnSpan:(NSInteger)colSpan
{
  v15.receiver = self;
  v15.super_class = NSTextTableBlock;
  v12 = [(NSTextBlock *)&v15 init];
  v13 = v12;
  if (v12)
  {
    if (table)
    {
      v12->_table = table;
      v13->_rowNum = row;
      v13->_colNum = col;
      v13->_rowSpan = rowSpan;
      v13->_colSpan = colSpan;
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextTableBlock;
  [(NSTextBlock *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = NSTextTableBlock;
  [(NSTextBlock *)&v10 encodeWithCoder:?];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:self->_table forKey:@"NSTable"];
    [coder encodeInteger:self->_rowNum forKey:@"NSRowNum"];
    [coder encodeInteger:self->_colNum forKey:@"NSColNum"];
    [coder encodeInteger:self->_rowSpan forKey:@"NSRowSpan"];
    [coder encodeInteger:self->_colSpan forKey:@"NSColSpan"];
  }

  else
  {
    rowNum = self->_rowNum;
    colNum = self->_colNum;
    v9 = rowNum;
    rowSpan = self->_rowSpan;
    colSpan = self->_colSpan;
    [coder encodeValuesOfObjCTypes:{"@IIII", &self->_table, &v9, &colNum, &rowSpan, &colSpan}];
  }
}

- (NSTextTableBlock)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = NSTextTableBlock;
  v4 = [(NSTextBlock *)&v12 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      v4->_table = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSTable"];
      v4->_rowNum = [coder decodeIntegerForKey:@"NSRowNum"];
      v4->_colNum = [coder decodeIntegerForKey:@"NSColNum"];
      v4->_rowSpan = [coder decodeIntegerForKey:@"NSRowSpan"];
      v4->_colSpan = [coder decodeIntegerForKey:@"NSColSpan"];
    }

    else
    {
      v5 = [coder versionForClassName:@"NSTextTableBlock"];
      if (v5 == 1)
      {
        v11 = 0;
        v10 = 0;
        v9 = 0;
        [coder decodeValuesOfObjCTypes:{"@IIII", &v4->_table, &v11, &v10, &v9 + 4, &v9}];
        v4->_rowNum = v11;
        v4->_colNum = v10;
        v4->_rowSpan = HIDWORD(v9);
        v4->_colSpan = v9;
      }

      else
      {
        v6 = v5;
        v7 = _NSFullMethodName();
        NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v7, 1, v6);

        return 0;
      }
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithTable:startingRow:rowSpan:startingColumn:columnSpan:", self->_table, self->_rowNum, self->_rowSpan, self->_colNum, self->_colSpan}];
  [v4 _takeValuesFromTextBlock:self];
  return v4;
}

- (CGRect)rectForLayoutAtPoint:(CGPoint)point inRect:(CGRect)rect textContainer:(id)container characterRange:(_NSRange)range
{
  [(NSTextTable *)self->_table rectForBlock:self layoutAtPoint:container inRect:range.location textContainer:range.length characterRange:point.x, point.y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)boundsRectForContentRect:(CGRect)rect inRect:(CGRect)inRect textContainer:(id)container characterRange:(_NSRange)range
{
  [(NSTextTable *)self->_table boundsRectForBlock:self contentRect:container inRect:range.location textContainer:range.length characterRange:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, inRect.origin.x, inRect.origin.y, inRect.size.width, inRect.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end