@interface AWDSpringBoardFolderStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)numberOfFoldersPerPageAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNumberOfPagesInRootFolder:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalNumberOfFolders:(BOOL)a3;
- (void)setHasTotalNumberOfIconsInDock:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSpringBoardFolderStats

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDSpringBoardFolderStats;
  [(AWDSpringBoardFolderStats *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTotalNumberOfFolders:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfPagesInRootFolder:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTotalNumberOfIconsInDock:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (unint64_t)numberOfFoldersPerPageAtIndex:(unint64_t)a3
{
  p_numberOfFoldersPerPages = &self->_numberOfFoldersPerPages;
  count = self->_numberOfFoldersPerPages.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_numberOfFoldersPerPages->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSpringBoardFolderStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardFolderStats description](&v3, sel_description), -[AWDSpringBoardFolderStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalNumberOfFolders), @"totalNumberOfFolders"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalNumberOfIconsInDock), @"totalNumberOfIconsInDock"}];
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numberOfPagesInRootFolder), @"numberOfPagesInRootFolder"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numberOfFoldersInDock), @"numberOfFoldersInDock"}];
  }

LABEL_7:
  [v3 setObject:PBRepeatedUInt64NSArray() forKey:@"numberOfFoldersPerPage"];
  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  totalNumberOfFolders = self->_totalNumberOfFolders;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  numberOfPagesInRootFolder = self->_numberOfPagesInRootFolder;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  totalNumberOfIconsInDock = self->_totalNumberOfIconsInDock;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_6:
    numberOfFoldersInDock = self->_numberOfFoldersInDock;
    PBDataWriterWriteUint64Field();
  }

LABEL_7:
  p_numberOfFoldersPerPages = &self->_numberOfFoldersPerPages;
  if (p_numberOfFoldersPerPages->count)
  {
    v7 = 0;
    do
    {
      v8 = p_numberOfFoldersPerPages->list[v7];
      PBDataWriterWriteUint64Field();
      ++v7;
    }

    while (v7 < p_numberOfFoldersPerPages->count);
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 6) = self->_timestamp;
    *(a3 + 72) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 7) = self->_totalNumberOfFolders;
  *(a3 + 72) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    *(a3 + 8) = self->_totalNumberOfIconsInDock;
    *(a3 + 72) |= 0x10u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  *(a3 + 5) = self->_numberOfPagesInRootFolder;
  *(a3 + 72) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(a3 + 4) = self->_numberOfFoldersInDock;
    *(a3 + 72) |= 1u;
  }

LABEL_7:
  if ([(AWDSpringBoardFolderStats *)self numberOfFoldersPerPagesCount])
  {
    [a3 clearNumberOfFoldersPerPages];
    v6 = [(AWDSpringBoardFolderStats *)self numberOfFoldersPerPagesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addNumberOfFoldersPerPage:{-[AWDSpringBoardFolderStats numberOfFoldersPerPageAtIndex:](self, "numberOfFoldersPerPageAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 48) = self->_timestamp;
    *(v4 + 72) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 56) = self->_totalNumberOfFolders;
  *(v4 + 72) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v4 + 64) = self->_totalNumberOfIconsInDock;
    *(v4 + 72) |= 0x10u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v4 + 40) = self->_numberOfPagesInRootFolder;
  *(v4 + 72) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(v4 + 32) = self->_numberOfFoldersInDock;
    *(v4 + 72) |= 1u;
  }

LABEL_7:
  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 72);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 72) & 4) == 0 || self->_timestamp != *(a3 + 6))
    {
      return 0;
    }
  }

  else if ((*(a3 + 72) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(a3 + 72) & 8) == 0 || self->_totalNumberOfFolders != *(a3 + 7))
    {
      return 0;
    }
  }

  else if ((*(a3 + 72) & 8) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 72) & 2) == 0 || self->_numberOfPagesInRootFolder != *(a3 + 5))
    {
      return 0;
    }
  }

  else if ((*(a3 + 72) & 2) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(a3 + 72) & 0x10) == 0 || self->_totalNumberOfIconsInDock != *(a3 + 8))
    {
      return 0;
    }
  }

  else if ((*(a3 + 72) & 0x10) != 0)
  {
    return 0;
  }

  if (*&self->_has)
  {
    if ((*(a3 + 72) & 1) == 0 || self->_numberOfFoldersInDock != *(a3 + 4))
    {
      return 0;
    }
  }

  else if (*(a3 + 72))
  {
    return 0;
  }

  return PBRepeatedUInt64IsEqual();
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_totalNumberOfFolders;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_numberOfPagesInRootFolder;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ PBRepeatedUInt64Hash();
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761u * self->_totalNumberOfIconsInDock;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761u * self->_numberOfFoldersInDock;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 72);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 6);
    *&self->_has |= 4u;
    v5 = *(a3 + 72);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + 72) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_totalNumberOfFolders = *(a3 + 7);
  *&self->_has |= 8u;
  v5 = *(a3 + 72);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_numberOfPagesInRootFolder = *(a3 + 5);
  *&self->_has |= 2u;
  v5 = *(a3 + 72);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  self->_totalNumberOfIconsInDock = *(a3 + 8);
  *&self->_has |= 0x10u;
  if (*(a3 + 72))
  {
LABEL_6:
    self->_numberOfFoldersInDock = *(a3 + 4);
    *&self->_has |= 1u;
  }

LABEL_7:
  v6 = [a3 numberOfFoldersPerPagesCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDSpringBoardFolderStats addNumberOfFoldersPerPage:](self, "addNumberOfFoldersPerPage:", [a3 numberOfFoldersPerPageAtIndex:i]);
    }
  }
}

@end