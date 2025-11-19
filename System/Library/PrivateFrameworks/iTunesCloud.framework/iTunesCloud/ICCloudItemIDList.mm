@interface ICCloudItemIDList
- (ICCloudItemIDList)init;
- (ICCloudItemIDList)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addCloudItemID:(unint64_t)a3 idType:(int64_t)a4;
- (void)addGlobalPlaylistID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateCloudItemIDsUsingBlock:(id)a3;
- (void)insertCloudItemID:(unint64_t)a3 idType:(int64_t)a4 atIndex:(unint64_t)a5;
@end

@implementation ICCloudItemIDList

- (void)enumerateCloudItemIDsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = 0;
    v5 = [(NSMutableArray *)self->_itemIDs count];
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        v8 = [(NSMutableArray *)self->_itemIDs objectAtIndex:v6];
        v9 = [(NSMutableArray *)self->_idTypes objectAtIndex:v6];
        v10 = [v9 integerValue];

        v4[2](v4, v8, v10, v6, &v12);
        LOBYTE(v9) = v12;

        if (v9)
        {
          break;
        }
      }

      while (v7 != v6++);
    }
  }
}

- (void)insertCloudItemID:(unint64_t)a3 idType:(int64_t)a4 atIndex:(unint64_t)a5
{
  itemIDs = self->_itemIDs;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableArray *)itemIDs insertObject:v9 atIndex:a5];

  idTypes = self->_idTypes;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableArray *)idTypes insertObject:v11 atIndex:a5];
}

- (void)addGlobalPlaylistID:(id)a3
{
  [(NSMutableArray *)self->_itemIDs addObject:a3];
  idTypes = self->_idTypes;

  [(NSMutableArray *)idTypes addObject:&unk_1F2C92188];
}

- (void)addCloudItemID:(unint64_t)a3 idType:(int64_t)a4
{
  itemIDs = self->_itemIDs;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSMutableArray *)itemIDs addObject:v7];

  idTypes = self->_idTypes;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableArray *)idTypes addObject:v9];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSMutableArray *)self->_itemIDs copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSMutableArray *)self->_idTypes copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  itemIDs = self->_itemIDs;
  v5 = a3;
  [v5 encodeObject:itemIDs forKey:@"ICCloudItemIDListItemIDs"];
  [v5 encodeObject:self->_idTypes forKey:@"ICCloudItemIDListIDTypes"];
}

- (ICCloudItemIDList)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ICCloudItemIDList;
  v5 = [(ICCloudItemIDList *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ICCloudItemIDListItemIDs"];
    itemIDs = v5->_itemIDs;
    v5->_itemIDs = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"ICCloudItemIDListIDTypes"];
    idTypes = v5->_idTypes;
    v5->_idTypes = v15;
  }

  return v5;
}

- (ICCloudItemIDList)init
{
  v8.receiver = self;
  v8.super_class = ICCloudItemIDList;
  v2 = [(ICCloudItemIDList *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    itemIDs = v2->_itemIDs;
    v2->_itemIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    idTypes = v2->_idTypes;
    v2->_idTypes = v5;
  }

  return v2;
}

@end