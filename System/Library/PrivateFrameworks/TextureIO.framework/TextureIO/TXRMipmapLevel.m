@interface TXRMipmapLevel
- (id)copyWithZone:(_NSZone *)a3;
- (void)setImage:(id)a3 atElement:(unint64_t)a4 atFace:(unint64_t)a5;
@end

@implementation TXRMipmapLevel

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [+[TXRMipmapLevel allocWithZone:](TXRMipmapLevel init];
  v6 = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{a3), "initWithCapacity:", -[NSMutableArray count](self->_elements, "count")}];
  elements = v5->_elements;
  v5->_elements = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_elements;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v5->_elements;
        v14 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{a3, v17}];
        [(NSMutableArray *)v13 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setImage:(id)a3 atElement:(unint64_t)a4 atFace:(unint64_t)a5
{
  elements = self->_elements;
  v8 = a3;
  v9 = [(NSMutableArray *)elements objectAtIndexedSubscript:a4];
  [v9 setImage:v8 atFace:a5];
}

@end