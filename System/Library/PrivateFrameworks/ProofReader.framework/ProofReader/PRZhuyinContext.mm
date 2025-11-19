@interface PRZhuyinContext
- (PRZhuyinContext)init;
- (id)description;
- (void)_addDeletions;
- (void)_addInsertions;
- (void)_addReplacements;
- (void)_addTranspositions;
- (void)_advanceIndexes;
- (void)_filterModifications;
- (void)_removeModificationsAndMoveStartingPoint;
- (void)dealloc;
- (void)removeNumberOfInputCharacters:(unint64_t)a3;
- (void)reset;
@end

@implementation PRZhuyinContext

- (PRZhuyinContext)init
{
  v4.receiver = self;
  v4.super_class = PRZhuyinContext;
  v2 = [(PRZhuyinContext *)&v4 init];
  v2->_modifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_addedModifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_removedModifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_addedRemovedModifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_prefixes = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_buffer = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  v2->_syllableLengthArray = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
  [(PRZhuyinContext *)v2 reset];
  return v2;
}

- (void)dealloc
{
  free(self->_buffer);
  free(self->_syllableLengthArray);
  v3.receiver = self;
  v3.super_class = PRZhuyinContext;
  [(PRZhuyinContext *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_buffer];
  modifications = self->_modifications;
  return [v3 stringWithFormat:@"%@\nmodifications:  %@\nprefixes:  %@", v4, modifications, self->_prefixes];
}

- (void)_removeModificationsAndMoveStartingPoint
{
  v3 = [(NSMutableArray *)self->_modifications count];
  startingPoint = self->_startingPoint;
  v31 = 0;
  length = self->_length;
  v6 = &OBJC_IVAR___PRSentenceCorrection__range;
  v26 = length > startingPoint && findZhuyin(&self->_buffer[startingPoint], length - startingPoint, 0, 1, 0, 0, 0, 0, &v31, 0, 0, 0) && v31 + self->_startingPoint == self->_length;
  v25 = startingPoint;
  if (v3)
  {
    v7 = 0;
    v8 = v3 - 1;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_modifications objectAtIndex:v8];
      v10 = [v9 syllableRange];
      v12 = v10 + v11;
      if (self->_startingPoint >= v10 + v11)
      {
        goto LABEL_22;
      }

      v13 = self->_length;
      if (v13 <= v12)
      {
        goto LABEL_22;
      }

      v14 = v10;
      v27 = v7;
      v30 = 0;
      v15 = v6;
      v16 = v6[24];
      v17 = next_zhuyin(*(&self->super.super.isa + v16) + v12, v13 - v12, 0, 1, &v30, 0);
      v28 = 0;
      v29 = 0;
      v18 = v17 ? v30 - v17 : 0;
      if (([v9 producesPartialSyllable] & 1) != 0 || v26 && self->_startingPoint <= v14)
      {
        break;
      }

      if (v18)
      {
        if (v18 == 1 && self->_length - v12 > 1)
        {
          break;
        }
      }

      else if (!is_partial_zhuyin(*(&self->super.super.isa + v16) + v12, self->_length - v12, 0))
      {
        break;
      }

      if ([v9 _shouldAppendLetter:(*(&self->super.super.isa + v16))[v12]])
      {
        break;
      }

      if (v18 < 2)
      {
        v6 = v15;
LABEL_36:
        v7 = v27;
        goto LABEL_22;
      }

      v6 = v15;
      if (!findZhuyin(*(&self->super.super.isa + v16) + v12, self->_length - v12, 0, 1, 0, 0, 0, 0, &v29, &v28, 0, self->_syllableLengthArray))
      {
        goto LABEL_36;
      }

      v19 = self->_length;
      v7 = v27;
      if (v29 + v12 < v19)
      {
        if (v28 > 1 || v19 - v12 >= 8 && v28 == 1)
        {
          goto LABEL_30;
        }

        v20 = *self->_syllableLengthArray;
        if (v20 != 3)
        {
          if (v20 != 2)
          {
            goto LABEL_22;
          }

          v21 = (*(&self->super.super.isa + v16) + v12);
          v22 = *v21;
          if (v22 != 104 && v22 != 103 && v22 != 100)
          {
            goto LABEL_22;
          }

          if (v21[1] != 101)
          {
            goto LABEL_22;
          }

LABEL_30:
          if (v29 > v27 || v27 && v29 == v27 && v12 < v25)
          {
            v7 = v29;
            v25 = v12;
          }

          goto LABEL_22;
        }

        v23 = (*(&self->super.super.isa + v16) + v12);
        v24 = *v23;
        if (v24 == 103)
        {
          if (v23[1] != 101)
          {
            goto LABEL_22;
          }
        }

        else if (v24 != 100 || v23[1] != 101)
        {
          goto LABEL_22;
        }

        if (v23[2] == 105)
        {
          goto LABEL_30;
        }
      }

LABEL_22:
      if (--v8 == -1)
      {
        goto LABEL_51;
      }
    }

    [(NSMutableArray *)self->_removedModifications addObject:v9];
    [(NSMutableArray *)self->_modifications removeObjectAtIndex:v8];
    v6 = v15;
    v7 = v27;
    goto LABEL_22;
  }

LABEL_51:
  self->_startingPoint = v25;
}

- (void)_advanceIndexes
{
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  nextIndexes = self->_nextIndexes;
  v4 = self->_nextIndexes[0];
  lastIndexes = self->_lastIndexes;
  v6 = self->_lastIndexes[0];
  buffer = self->_buffer;
  startingPoint = self->_startingPoint;
  v22 = 0;
  findZhuyin(&buffer[startingPoint], self->_length - startingPoint, 1, 1, &v27, &v26, &v25, &v24, &v23, 0, &v22, 0);
  v9 = v25;
  *lastIndexes = v24 + self->_startingPoint;
  lastIndexes[1] = &v9[self->_startingPoint];
  v10 = v27;
  lastIndexes[2] = &v26[self->_startingPoint];
  lastIndexes[3] = &v10[self->_startingPoint];
  *nextIndexes = v23 + self->_startingPoint;
  nextIndexes[1] = self->_startingPoint;
  v11 = lastIndexes[2];
  v12 = lastIndexes[3];
  if (v11 == v12 && v4 < v12)
  {
    if (lastIndexes[1] == v11 && v6 < v4)
    {
      lastIndexes[2] = v4;
      v4 = v6;
    }

    lastIndexes[3] = v4;
  }

  v13 = *nextIndexes;
  self->_startIndex = *nextIndexes;
  v14 = nextIndexes[1];
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = nextIndexes[1];
  }

  if (v14 > self->_startingPoint)
  {
    v13 = v15;
  }

  self->_startIndex = v13;
  if (v13 > *lastIndexes)
  {
    self->_startIndex = v13 - 1;
  }

  v16 = *nextIndexes;
  v17 = *nextIndexes + 7;
  self->_endIndex = v17;
  length = self->_length;
  if (v17 < length)
  {
    v19 = self->_buffer;
    if (v19[v17] == 39)
    {
      v20 = v16 + 8;
      do
      {
        v17 = v20;
        self->_endIndex = v20;
        length = self->_length;
        if (v20 >= length)
        {
          break;
        }

        v21 = v19[v20++];
      }

      while (v21 == 39);
    }
  }

  if (v17 > length)
  {
    self->_endIndex = length;
  }

  self->_lastSyllableIsPartial = v22;
}

- (void)_addTranspositions
{
  v62 = *MEMORY[0x1E69E9840];
  lastIndexes = self->_lastIndexes;
  if (self->_lastIndexes[1] >= self->_startIndex)
  {
    startIndex = self->_startIndex;
  }

  else
  {
    startIndex = self->_lastIndexes[1];
  }

  v4 = startIndex + 1;
  endIndex = self->_endIndex;
  if (startIndex + 1 < endIndex)
  {
    v6 = self;
    v44 = self->_lastIndexes;
    while (1)
    {
      v7 = startIndex;
      startIndex = v4;
      buffer = v6->_buffer;
      v9 = buffer[v7];
      if ((v9 - 49) >= 5)
      {
        v11 = 0;
        do
        {
          v10 = adjacentMatchesForLetters[v11] == v9;
          if (adjacentMatchesForLetters[v11] == v9)
          {
            break;
          }

          v39 = v11 == 252;
          v11 += 7;
        }

        while (!v39);
      }

      else
      {
        v10 = 1;
      }

      v12 = buffer[startIndex];
      if ((v12 - 49) >= 5)
      {
        v23 = 0;
        while (adjacentMatchesForLetters[v23] != v12)
        {
          v23 += 7;
          if (v23 == 259)
          {
            goto LABEL_74;
          }
        }
      }

      if (!v10)
      {
        goto LABEL_74;
      }

      v59 = 0;
      v60 = 0;
      v58 = 0;
      v57 = 0;
      v56[0] = externalZhuyinFromInternal(v12);
      v56[1] = externalZhuyinFromInternal(v9);
      v6->_buffer[v7] = v12;
      v6->_buffer[startIndex] = v9;
      v51 = startIndex;
      if (v7 >= *lastIndexes)
      {
        if (findZhuyin(&v6->_buffer[*lastIndexes], v6->_endIndex - *lastIndexes, 0, 0, 0, 0, 0, &v60, &v59, &v58, &v57, v6->_syllableLengthArray))
        {
          v13 = *lastIndexes;
          if (v59 + *lastIndexes == v6->_endIndex)
          {
            if (v58)
            {
              v14 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = (v6->_syllableLengthArray + 1);
              v19 = 0x7FFFFFFFFFFFFFFFLL;
              v45 = v58;
              while (1)
              {
                v20 = *(v18 - 1);
                v21 = v20 + v13;
                if (v7 >= v13)
                {
                  if (startIndex < v21)
                  {
                    if (v57)
                    {
                      v17 |= v58 - 1 == v14;
                    }

                    v15 = *(v18 - 1);
                    v22 = v13;
                    goto LABEL_29;
                  }

                  if (v7 < v21)
                  {
                    v15 = *v18;
                    if (v57)
                    {
                      v17 |= v58 - 2 == v14;
                    }

                    v16 = *(v18 - 1);
                    v19 = v13;
                    v22 = v20 + v13;
                    goto LABEL_29;
                  }
                }

                v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:
                if (v22 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  ++v14;
                  ++v18;
                  v13 += v20;
                  if (v14 < v58)
                  {
                    continue;
                  }
                }

                goto LABEL_56;
              }
            }

LABEL_57:
            v48 = 0;
            v47 = 0;
            v50 = 0;
            v45 = 0;
            goto LABEL_58;
          }
        }
      }

      v24 = lastIndexes[1];
      if (v7 < v24)
      {
        goto LABEL_57;
      }

      if (!findZhuyin(&v6->_buffer[v24], v6->_endIndex - v24, 0, 0, 0, 0, 0, &v60, &v59, &v58, &v57, v6->_syllableLengthArray))
      {
        goto LABEL_57;
      }

      v25 = lastIndexes[1];
      if (v59 + v25 != v6->_length || v57 == 1 && v7 >= v60 + v25)
      {
        goto LABEL_57;
      }

      if (v58)
      {
        break;
      }

      v48 = 0;
      v47 = 0;
      v50 = 0;
      v45 = -1;
LABEL_58:
      v46 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_59:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      modifications = v6->_modifications;
      v33 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v53;
LABEL_61:
        v36 = 0;
        while (1)
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(modifications);
          }

          v37 = *(*(&v52 + 1) + 8 * v36);
          if ([v37 modificationType] == 2)
          {
            v39 = v7 == [v37 range] && v38 == 2;
            if (v39)
            {
              break;
            }
          }

          if (v34 == ++v36)
          {
            v34 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v34)
            {
              goto LABEL_61;
            }

            goto LABEL_71;
          }
        }
      }

      else
      {
LABEL_71:
        if (v50)
        {
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v56 length:2];
          LOBYTE(v43) = v48 & 1;
          v41 = [[PRZhuyinModification alloc] initWithRange:v7 replacementString:2 modificationType:v40 syllableRange:2 additionalSyllableRange:v22 modificationScore:v50 syllableCountScore:0.0 syllableLetters:v46 producesPartialSyllable:v47, v45, &self->_buffer[v22], v43];
          [(NSMutableArray *)self->_modifications addObject:v41];
          [(NSMutableArray *)self->_addedModifications addObject:v41];
        }
      }

      v6 = self;
      self->_buffer[v7] = v9;
      startIndex = v51;
      self->_buffer[v51] = v12;
      lastIndexes = v44;
      endIndex = self->_endIndex;
LABEL_74:
      v4 = startIndex + 1;
      if (startIndex + 1 >= endIndex)
      {
        goto LABEL_77;
      }
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v26 = (v6->_syllableLengthArray + 1);
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = 1;
    v28 = v58 - 1;
    v45 = v58 - 1;
    while (1)
    {
      v29 = *(v26 - 1);
      v30 = v29 + v25;
      if (v7 >= v25)
      {
        if (startIndex < v30)
        {
          if (v57)
          {
            v17 |= v28 == 0;
          }

          v15 = *(v26 - 1);
          v22 = v25;
          goto LABEL_53;
        }

        if (v7 < v30)
        {
          v15 = *v26;
          if (v57)
          {
            v17 |= v28 == 1;
          }

          v16 = *(v26 - 1);
          v19 = v25;
          v22 = v29 + v25;
          goto LABEL_53;
        }
      }

      v22 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_53:
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v26;
        --v28;
        v25 += v29;
        if (v27++ < v58)
        {
          continue;
        }
      }

LABEL_56:
      v46 = v19;
      v47 = v16;
      v50 = v15;
      v48 = v17;
      goto LABEL_59;
    }
  }

LABEL_77:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)_addReplacements
{
  v46 = *MEMORY[0x1E69E9840];
  startIndex = self->_startIndex;
  endIndex = self->_endIndex;
  if (startIndex < endIndex)
  {
    while (1)
    {
      v4 = self->_buffer[startIndex];
      if ((v4 - 49) < 5)
      {
        break;
      }

      v5 = &unk_1D2BFC938;
      v30 = 37;
      do
      {
        if (*(v5 - 1) == v4)
        {
          goto LABEL_4;
        }

        v5 += 28;
        --v30;
      }

      while (v30);
LABEL_50:
      if (++startIndex >= endIndex)
      {
        goto LABEL_51;
      }
    }

    v5 = &adjacentMatchesForTones + 28 * (v4 - 49) + 4;
LABEL_4:
    v6 = 0;
    v34 = self->_buffer[startIndex];
    v33 = v5;
    while (1)
    {
      v7 = v5[4 * v6];
      if (v5[4 * v6])
      {
        v8 = v7 == v4;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v43 = 0;
        v44 = 0;
        v42 = 0;
        v41 = 0;
        v40 = externalZhuyinFromInternal(v7);
        self->_buffer[startIndex] = v7;
        if (findZhuyin(&self->_buffer[self->_lastIndexes[0]], self->_endIndex - self->_lastIndexes[0], 0, 0, 0, 0, 0, &v44, &v43, &v42, &v41, self->_syllableLengthArray))
        {
          v9 = self->_lastIndexes[0];
          if (v43 + v9 == self->_endIndex)
          {
            if (v42)
            {
              v10 = 0;
              v11 = 0;
              syllableLengthArray = self->_syllableLengthArray;
              v13 = 1;
              while (startIndex < v9)
              {
                v14 = 0x7FFFFFFFFFFFFFFFLL;
                if (v41)
                {
                  goto LABEL_22;
                }

LABEL_23:
                if (v14 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v16 = *syllableLengthArray++;
                  v9 += v16;
                  if (v13++ < v42)
                  {
                    continue;
                  }
                }

                goto LABEL_28;
              }

              v15 = *syllableLengthArray + v9;
              if (startIndex >= v15)
              {
                v14 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v14 = v9;
              }

              if (startIndex < v15)
              {
                v11 = *syllableLengthArray;
              }

              if (!v41)
              {
                goto LABEL_23;
              }

LABEL_22:
              v10 |= v42 == v13;
              goto LABEL_23;
            }

            v11 = 0;
            v10 = 0;
            v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            modifications = self->_modifications;
            v19 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v37;
LABEL_30:
              v22 = 0;
              while (1)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(modifications);
                }

                v23 = *(*(&v36 + 1) + 8 * v22);
                if ([v23 modificationType] == 1 && startIndex == objc_msgSend(v23, "range") && v24 == 1)
                {
                  v26 = [objc_msgSend(v23 "replacementString")];
                  if (v26 == v40)
                  {
                    break;
                  }
                }

                if (v20 == ++v22)
                {
                  v20 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v36 objects:v45 count:16];
                  if (v20)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_42;
                }
              }
            }

            else
            {
LABEL_42:
              if (v11)
              {
                v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v40 length:1];
                v28 = [PRZhuyinModification alloc];
                LOBYTE(v32) = v10 & 1;
                v29 = [(PRZhuyinModification *)v28 initWithRange:startIndex replacementString:1 modificationType:v27 syllableRange:1 modificationScore:v14 syllableCountScore:v11 syllableLetters:0.0 producesPartialSyllable:v42, &self->_buffer[v14], v32];
                [(NSMutableArray *)self->_modifications addObject:v29];
                [(NSMutableArray *)self->_addedModifications addObject:v29];
              }
            }
          }
        }

        v4 = v34;
        self->_buffer[startIndex] = v34;
        v5 = v33;
      }

      if (++v6 == 6)
      {
        endIndex = self->_endIndex;
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  v31 = *MEMORY[0x1E69E9840];
}

- (void)_addInsertions
{
  v50 = *MEMORY[0x1E69E9840];
  startIndex = self->_startIndex;
  if (startIndex >= self->_endIndex)
  {
    goto LABEL_57;
  }

  do
  {
    v4 = self->_buffer[startIndex];
    if ((v4 - 49) <= 4)
    {
      v5 = startIndex + 1;
      goto LABEL_56;
    }

    if (v4 == 154 || v4 == 158)
    {
      v7 = &insertionFollowersForLetter_insertionFollowers1;
LABEL_11:
      v39 = v7;
      goto LABEL_12;
    }

    v39 = &insertionFollowersForLetter_insertionFollowers1;
    if (v4 != 231)
    {
      v6 = memchr("bpmfdtnlgkhjqxzcs", v4, 0x12uLL);
      v7 = &insertionFollowersForLetter_insertionFollowers1;
      if (!v6)
      {
        v7 = &insertionFollowersForLetter_insertionFollowers2;
      }

      goto LABEL_11;
    }

LABEL_12:
    length = self->_length;
    if (length + 1 > startIndex)
    {
      do
      {
        self->_buffer[length + 1] = self->_buffer[length];
      }

      while (length-- > startIndex);
    }

    v10 = 0;
    v37 = startIndex;
    v5 = startIndex + 1;
    do
    {
      v11 = v39[v10];
      if (v11)
      {
        v47 = 0;
        v48 = 0;
        v46 = 0;
        v45 = 0;
        v44 = externalZhuyinFromInternal(v11);
        self->_buffer[v5] = v11;
        if (findZhuyin(&self->_buffer[self->_lastIndexes[0]], self->_endIndex - self->_lastIndexes[0] + 1, 0, 0, 0, 0, 0, &v48, &v47, &v46, &v45, self->_syllableLengthArray))
        {
          v12 = self->_lastIndexes[0];
          if (v47 + v12 == self->_endIndex + 1 && (v45 != 1 || v5 < v48 + v12))
          {
            if (v46)
            {
              v13 = 0;
              v14 = 0;
              syllableLengthArray = self->_syllableLengthArray;
              v16 = 1;
              while (v5 < v12)
              {
                v17 = 0x7FFFFFFFFFFFFFFFLL;
                if (v45)
                {
                  goto LABEL_31;
                }

LABEL_32:
                if (v17 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v19 = *syllableLengthArray++;
                  v12 += v19;
                  if (v16++ < v46)
                  {
                    continue;
                  }
                }

                goto LABEL_37;
              }

              v18 = *syllableLengthArray + v12;
              if (v5 >= v18)
              {
                v17 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v12;
              }

              if (v5 < v18)
              {
                v14 = *syllableLengthArray - 1;
              }

              if (!v45)
              {
                goto LABEL_32;
              }

LABEL_31:
              v13 |= v46 == v16;
              goto LABEL_32;
            }

            v14 = 0;
            v13 = 0;
            v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_37:
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = v14;
            modifications = self->_modifications;
            v22 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v41;
LABEL_39:
              v25 = 0;
              while (1)
              {
                if (*v41 != v24)
                {
                  objc_enumerationMutation(modifications);
                }

                v26 = *(*(&v40 + 1) + 8 * v25);
                if ([v26 modificationType] == 3 && v5 == objc_msgSend(v26, "range") && v27 == 0)
                {
                  v29 = [objc_msgSend(v26 "replacementString")];
                  if (v29 == v44)
                  {
                    break;
                  }
                }

                if (v23 == ++v25)
                {
                  v23 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v40 objects:v49 count:16];
                  if (v23)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_51;
                }
              }
            }

            else
            {
LABEL_51:
              if (v38)
              {
                v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v44 length:1];
                v31 = [PRZhuyinModification alloc];
                LOBYTE(v36) = v13 & 1;
                v32 = [(PRZhuyinModification *)v31 initWithRange:v5 replacementString:0 modificationType:v30 syllableRange:3 modificationScore:v17 syllableCountScore:v38 syllableLetters:0.0 producesPartialSyllable:v46, &self->_buffer[v17], v36];
                [(NSMutableArray *)self->_modifications addObject:v32];
                [(NSMutableArray *)self->_addedModifications addObject:v32];
              }
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != 5);
    v33 = v37;
    if (v37 < self->_length)
    {
      do
      {
        self->_buffer[v33 + 1] = self->_buffer[v33 + 2];
        v34 = v33 + 2;
        ++v33;
      }

      while (v34 <= self->_length);
    }

LABEL_56:
    startIndex = v5;
  }

  while (v5 < self->_endIndex);
LABEL_57:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)_addDeletions
{
  v61 = *MEMORY[0x1E69E9840];
  startIndex = self->_startIndex;
  v3 = startIndex + 2;
  endIndex = self->_endIndex;
  if (startIndex + 2 < endIndex)
  {
    v6 = startIndex + 1;
    do
    {
      v7 = v6;
      v6 = v3;
      buffer = self->_buffer;
      v9 = buffer[v7];
      v10 = buffer[v7 - 1];
      v11 = buffer[v6];
      v12 = v9 - 49;
      if ((v9 - 49) >= 5)
      {
        v15 = 0;
        while (adjacentMatchesForLetters[v15] != v9)
        {
          v15 += 7;
          if (v15 == 259)
          {
            goto LABEL_81;
          }
        }

        if (v9 == v10)
        {
LABEL_15:
          v49 = v6;
          v51 = 1;
          goto LABEL_21;
        }

        v13 = &unk_1D2BFC938;
        v16 = 37;
        while (*(v13 - 1) != v9)
        {
          v13 += 28;
          if (!--v16)
          {
LABEL_19:
            if (v9 != v11)
            {
              if (v12 >= 5)
              {
                v28 = &unk_1D2BFC938;
                v30 = 37;
                while (*(v28 - 1) != v9)
                {
                  v28 += 28;
                  if (!--v30)
                  {
                    goto LABEL_81;
                  }
                }
              }

              else
              {
                v28 = &adjacentMatchesForTones + 28 * v12 + 4;
              }

              v29 = 0;
              while (*&v28[v29] != v11)
              {
                v29 += 4;
                if (v29 == 24)
                {
                  goto LABEL_81;
                }
              }
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
        if (v9 == v10)
        {
          goto LABEL_15;
        }

        v13 = &adjacentMatchesForTones + 28 * v12 + 4;
      }

      v14 = 0;
      while (*&v13[v14] != v10)
      {
        v14 += 4;
        if (v14 == 24)
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      v49 = v6;
      v51 = 0;
LABEL_21:
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v56 = 0;
      if (v7 < self->_length)
      {
        v17 = startIndex;
        do
        {
          self->_buffer[v17 + 1] = self->_buffer[v17 + 2];
          v18 = v17 + 2;
          ++v17;
        }

        while (v18 < self->_length);
        buffer = self->_buffer;
        endIndex = self->_endIndex;
      }

      v48 = startIndex;
      if (findZhuyin(&buffer[self->_lastIndexes[0]], endIndex + ~self->_lastIndexes[0], 0, 0, 0, 0, 0, &v59, &v58, &v57, &v56, self->_syllableLengthArray))
      {
        v19 = self->_lastIndexes[0];
        if (v58 + v19 == self->_endIndex - 1 && (v56 != 1 || v49 <= v59 + v19))
        {
          if (v57)
          {
            v20 = 0;
            v21 = 0;
            syllableLengthArray = self->_syllableLengthArray;
            v23 = 1;
            while (v7 < v19)
            {
              v24 = 0x7FFFFFFFFFFFFFFFLL;
              if (v56)
              {
                goto LABEL_40;
              }

LABEL_41:
              if (v24 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v26 = *syllableLengthArray++;
                v19 += v26;
                if (v23++ < v57)
                {
                  continue;
                }
              }

              goto LABEL_56;
            }

            v25 = *syllableLengthArray + v19;
            if (v7 >= v25)
            {
              v24 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v19;
            }

            if (v7 < v25)
            {
              v21 = *syllableLengthArray + 1;
            }

            if (!v56)
            {
              goto LABEL_41;
            }

LABEL_40:
            v20 |= v57 == v23;
            goto LABEL_41;
          }

          v21 = 0;
          v20 = 0;
          v24 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_56:
          v46 = v20;
          v47 = v21;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          obj = self->_modifications;
          v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v53;
LABEL_58:
            v34 = 0;
            while (1)
            {
              if (*v53 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v52 + 1) + 8 * v34);
              if ([v35 modificationType] == 4)
              {
                v36 = [v35 range];
                if (v7 == v36 && v37 == 1)
                {
                  break;
                }

                v39 = v37 == 1 ? v51 : 0;
                if (v39 == 1 && v36 + 1 == v7)
                {
                  break;
                }
              }

              if (v32 == ++v34)
              {
                v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v60 count:16];
                if (v32)
                {
                  goto LABEL_58;
                }

                goto LABEL_75;
              }
            }
          }

          else
          {
LABEL_75:
            if (v47 >= 2)
            {
              v41 = [PRZhuyinModification alloc];
              LOBYTE(v45) = v46 & 1;
              v42 = [(PRZhuyinModification *)v41 initWithRange:v7 replacementString:1 modificationType:&stru_1F4E0A7A0 syllableRange:4 modificationScore:v24 syllableCountScore:v47 syllableLetters:0.0 producesPartialSyllable:v57, &self->_buffer[v24], v45];
              [(NSMutableArray *)self->_modifications addObject:v42];
              [(NSMutableArray *)self->_addedModifications addObject:v42];
            }
          }
        }
      }

        ;
      }

      self->_buffer[v7] = v9;
      startIndex = v48;
      endIndex = self->_endIndex;
      v6 = v49;
LABEL_81:
      v3 = v6 + 1;
      ++startIndex;
    }

    while (v6 + 1 < endIndex);
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_filterModifications
{
  v2 = self;
  v72 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_addedModifications count];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  addedModifications = v2->_addedModifications;
  v5 = [(NSMutableArray *)addedModifications countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = v2;
    v8 = 0;
    v9 = *v65;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(addedModifications);
        }

        v11 = [*(*(&v64 + 1) + 8 * i) syllableCountScore];
        if (v8 - 1 >= v11)
        {
          v8 = v11;
        }
      }

      v6 = [(NSMutableArray *)addedModifications countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v6);
    if (v8)
    {
      v12 = v3 == 0;
    }

    else
    {
      v12 = 1;
    }

    v2 = v7;
    if (!v12)
    {
      v13 = v3 - 1;
      do
      {
        v14 = [(NSMutableArray *)v7->_addedModifications objectAtIndex:v13];
        if ([v14 syllableCountScore] > v8)
        {
          [(NSMutableArray *)v7->_modifications removeObjectIdenticalTo:v14];
          [(NSMutableArray *)v7->_addedModifications removeObjectAtIndex:v13];
        }

        --v13;
      }

      while (v13 != -1);
    }
  }

  v15 = [(NSMutableArray *)v2->_modifications count];
  if (v15)
  {
    v16 = v15;
    v49 = v2;
    do
    {
      while (1)
      {
        v50 = v16 - 1;
        v17 = [(NSMutableArray *)v2->_modifications objectAtIndex:v16 - 1];
        [v17 modificationType];
        [v17 range];
        v18 = [v17 combinedSyllableRange];
        v20 = v19;
        v21 = [v17 syllableCountScore];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = v2->_modifications;
        v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v61;
          v25 = v18 + v20;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v61 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v60 + 1) + 8 * j);
              if (v27 != v17)
              {
                [*(*(&v60 + 1) + 8 * j) modificationType];
                v28 = v17;
                v29 = [v27 combinedSyllableRange];
                v31 = v30;
                v32 = [v27 syllableCountScore] >= v21 || v18 >= v29 + v31;
                v33 = !v32 && v25 > v29;
                v17 = v28;
                if (v33)
                {
                  v2 = v49;
                  v44 = [(NSMutableArray *)v49->_addedModifications indexOfObjectIdenticalTo:v28];
                  if (v44 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [(NSMutableArray *)v49->_removedModifications addObject:v28];
                  }

                  else
                  {
                    [(NSMutableArray *)v49->_addedModifications removeObjectAtIndex:v44];
                  }

                  v16 = v50;
                  goto LABEL_63;
                }
              }
            }

            v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v2 = v49;
        removedModifications = v49->_removedModifications;
        v35 = [(NSMutableArray *)removedModifications countByEnumeratingWithState:&v56 objects:v69 count:16];
        v16 = v50;
        if (v35)
        {
          v36 = v35;
          v37 = *v57;
          while (2)
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v57 != v37)
              {
                objc_enumerationMutation(removedModifications);
              }

              if ([*(*(&v56 + 1) + 8 * k) isEqual:v17])
              {
                v45 = [(NSMutableArray *)v49->_addedModifications indexOfObjectIdenticalTo:v17];
                if (v45 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(NSMutableArray *)v49->_addedModifications removeObjectAtIndex:v45];
                  addedRemovedModifications = v49->_addedRemovedModifications;
LABEL_61:
                  [(NSMutableArray *)addedRemovedModifications addObject:v17];
                }

                goto LABEL_63;
              }
            }

            v36 = [(NSMutableArray *)removedModifications countByEnumeratingWithState:&v56 objects:v69 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v39 = v49->_addedRemovedModifications;
        v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v40)
        {
          break;
        }

LABEL_51:
        if (!v50)
        {
          goto LABEL_64;
        }
      }

      v41 = v40;
      v42 = *v53;
LABEL_45:
      v43 = 0;
      while (1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v39);
        }

        if ([*(*(&v52 + 1) + 8 * v43) isEqual:v17])
        {
          break;
        }

        if (v41 == ++v43)
        {
          v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
          if (v41)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }
      }

      v47 = [(NSMutableArray *)v49->_addedModifications indexOfObjectIdenticalTo:v17];
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        addedRemovedModifications = v49->_removedModifications;
        goto LABEL_61;
      }

      [(NSMutableArray *)v49->_addedModifications removeObjectAtIndex:v47];
LABEL_63:
      [(NSMutableArray *)v2->_modifications removeObjectAtIndex:v16];
    }

    while (v16);
  }

LABEL_64:
  v48 = *MEMORY[0x1E69E9840];
}

- (void)removeNumberOfInputCharacters:(unint64_t)a3
{
  length = self->_length;
  if (length >= a3)
  {
    v4 = length - a3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 && length)
  {
    v7 = malloc_type_calloc(0x100uLL, 1uLL, 0xC74D66C1uLL);
    v8 = v7;
    if (length <= a3)
    {
      [(PRZhuyinContext *)self reset];
    }

    else
    {
      v9 = 0;
      do
      {
        v7[v9] = self->_buffer[v9];
        ++v9;
      }

      while (v9 < v4);
      [(PRZhuyinContext *)self reset];
      v10 = 0;
      do
      {
        [(PRZhuyinContext *)self addInputCharacter:v8[v10++] geometryModel:0 geometryData:0];
      }

      while (v10 < v4);
    }

    free(v8);
  }
}

- (void)reset
{
  buffer = self->_buffer;
  *buffer = 0u;
  *(buffer + 1) = 0u;
  *(buffer + 2) = 0u;
  *(buffer + 3) = 0u;
  *(buffer + 4) = 0u;
  *(buffer + 5) = 0u;
  *(buffer + 6) = 0u;
  *(buffer + 7) = 0u;
  *(buffer + 8) = 0u;
  *(buffer + 9) = 0u;
  *(buffer + 10) = 0u;
  *(buffer + 11) = 0u;
  *(buffer + 12) = 0u;
  *(buffer + 13) = 0u;
  *(buffer + 14) = 0u;
  *(buffer + 15) = 0u;
  [(NSMutableArray *)self->_addedModifications removeAllObjects];
  [(NSMutableArray *)self->_removedModifications removeAllObjects];
  [(NSMutableArray *)self->_removedModifications addObjectsFromArray:self->_modifications];
  [(NSMutableArray *)self->_modifications removeAllObjects];
  [(NSMutableArray *)self->_prefixes removeAllObjects];
  self->_endIndex = 0;
  self->_startIndex = 0;
  self->_nextIndexes[0] = 0;
  self->_nextIndexes[1] = 0;
  *self->_lastIndexes = 0u;
  *&self->_lastIndexes[2] = 0u;
  self->_startingPoint = 0;
  self->_lengthBeforeApostrophes = 0;
  self->_length = 0;
  self->_lastSyllableIsPartial = 0;
}

@end