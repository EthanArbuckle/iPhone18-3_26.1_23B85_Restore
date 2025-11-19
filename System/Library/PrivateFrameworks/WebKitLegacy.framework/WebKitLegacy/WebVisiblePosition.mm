@interface WebVisiblePosition
+ (id)_wrapVisiblePositionIfValid:(VisiblePosition *)a3;
- (BOOL)atAlphaNumericBoundaryInDirection:(int)a3;
- (BOOL)atBoundaryOfGranularity:(int)a3 inDirection:(int)a4;
- (BOOL)directionIsDownstream:(int)a3;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresContextForWordBoundary;
- (BOOL)withinTextUnitOfGranularity:(int)a3 inDirectionIfAtBoundary:(int)a4;
- (VisiblePosition)_visiblePosition;
- (id)description;
- (id)enclosingRangeWithCorrectionIndicator;
- (id)enclosingRangeWithDictationPhraseAlternatives:(id *)a3;
- (id)enclosingTextUnitOfGranularity:(int)a3 inDirectionIfAtBoundary:(int)a4;
- (id)positionAtStartOrEndOfWord;
- (id)positionByMovingInDirection:(int)a3 amount:(unsigned int)a4 withAffinityDownstream:(BOOL)a5;
- (id)positionOfNextBoundaryOfGranularity:(int)a3 inDirection:(int)a4;
- (int)distanceFromPosition:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)affinity;
- (void)dealloc;
@end

@implementation WebVisiblePosition

+ (id)_wrapVisiblePositionIfValid:(VisiblePosition *)a3
{
  var0 = a3->var0.var0.var0;
  if (!a3->var0.var0.var0)
  {
    return 0;
  }

  *(var0 + 7) += 2;
  v7 = var0;
  var1 = a3->var0.var1;
  v9 = *(&a3->var0 + 12);
  v10 = a3->var1;
  result = [WebVisiblePosition _wrapVisiblePosition:&v7];
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v6 = result;
      WebCore::Node::removedLastRef(v5);
      return v6;
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  return result;
}

- (VisiblePosition)_visiblePosition
{
  v3 = *&self->var0.var1;
  v4 = *v3;
  if (*v3)
  {
    *(v4 + 28) += 2;
  }

  retstr->var0.var0.var0 = v4;
  retstr->var0.var1 = *(v3 + 2);
  *(&retstr->var0 + 12) = *(v3 + 12);
  retstr->var1 = *(v3 + 16);
  return self;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    v4 = *internal;
    *internal = 0;
    if (v4)
    {
      if (*(v4 + 7) == 2)
      {
        v5 = internal;
        WebCore::Node::removedLastRef(v4);
        internal = v5;
      }

      else
      {
        *(v4 + 7) -= 2;
      }
    }

    MEMORY[0x1CCA6A890](internal, 0x1020C4021B6F8B6);
  }

  self->_internal = 0;
  v6.receiver = self;
  v6.super_class = WebVisiblePosition;
  [(WebVisiblePosition *)&v6 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    if (a3)
    {
LABEL_4:
      [a3 _visiblePosition];
      goto LABEL_9;
    }
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    if (a3)
    {
      goto LABEL_4;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_9:
  result = WebCore::operator==(v11, v10);
  v6 = v10[0];
  v10[0] = 0;
  if (!v6)
  {
    goto LABEL_12;
  }

  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
LABEL_12:
    v7 = v11[0];
    v11[0] = 0;
    if (!v7)
    {
      return result;
    }

    goto LABEL_15;
  }

  v8 = result;
  WebCore::Node::removedLastRef(v6);
  result = v8;
  v7 = v11[0];
  v11[0] = 0;
  if (!v7)
  {
    return result;
  }

LABEL_15:
  if (*(v7 + 7) == 2)
  {
    v9 = result;
    WebCore::Node::removedLastRef(v7);
    return v9;
  }

  else
  {
    *(v7 + 7) -= 2;
  }

  return result;
}

- (int64_t)compare:(id)a3
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    if (a3)
    {
LABEL_3:
      [a3 _visiblePosition];
      goto LABEL_6;
    }
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(v8, 0, sizeof(v8));
LABEL_6:
  if (WebCore::operator==(v9, v8))
  {
    v4 = 0;
  }

  else if (WebCore::operator<=>() == 0xFF)
  {
    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  v5 = v8[0];
  v8[0] = 0;
  if (!v5)
  {
LABEL_14:
    v6 = v9[0];
    v9[0] = 0;
    if (!v6)
    {
      return v4;
    }

    goto LABEL_17;
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    goto LABEL_14;
  }

  WebCore::Node::removedLastRef(v5);
  v6 = v9[0];
  v9[0] = 0;
  if (!v6)
  {
    return v4;
  }

LABEL_17:
  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    return v4;
  }

  WebCore::Node::removedLastRef(v6);
  return v4;
}

- (int)distanceFromPosition:(id)a3
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    if (a3)
    {
LABEL_3:
      [a3 _visiblePosition];
      goto LABEL_6;
    }
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(&v8, 0, sizeof(v8));
LABEL_6:
  v4 = WebCore::distanceBetweenPositions(v9, &v8, a3);
  var0 = v8.var0.var0.var0;
  v8.var0.var0.var0 = 0;
  if (!var0)
  {
    goto LABEL_9;
  }

  if (*(var0 + 7) != 2)
  {
    *(var0 + 7) -= 2;
LABEL_9:
    v6 = v9[0];
    v9[0] = 0;
    if (!v6)
    {
      return v4;
    }

    goto LABEL_12;
  }

  WebCore::Node::removedLastRef(var0);
  v6 = v9[0];
  v9[0] = 0;
  if (!v6)
  {
    return v4;
  }

LABEL_12:
  if (*(v6 + 7) != 2)
  {
    *(v6 + 7) -= 2;
    return v4;
  }

  WebCore::Node::removedLastRef(v6);
  return v4;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = WebVisiblePosition;
  v3 = [MEMORY[0x1E696AD60] stringWithString:{-[WebVisiblePosition description](&v17, sel_description)}];
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    v4 = v14;
    if (v14)
    {
      v5 = *(v14 + 7);
      *(v14 + 7) = v5 + 2;
      v6 = v15;
      if (v5)
      {
        *(v4 + 7) = v5;
      }

      else
      {
        WebCore::Node::removedLastRef(v4);
      }
    }

    else
    {
      v6 = v15;
    }
  }

  else
  {
    v6 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  WebCore::VisiblePosition::previous();
  v7 = WebCore::VisiblePosition::characterAfter(v18);
  v8 = v18[0];
  v18[0] = 0;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  v9 = WebCore::VisiblePosition::characterAfter(&v14);
  WebCore::VisiblePosition::previous();
  v10 = WebCore::VisiblePosition::characterAfter(v18);
  v11 = v18[0];
  v18[0] = 0;
  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
    }

    else
    {
      *(v11 + 7) -= 2;
    }
  }

  objc_msgSend(v3, "appendFormat:", @"(offset=%d, context=([%c|%c], [u+%04x|u+%04x])"), v6, v7, v9, v10, WebCore::VisiblePosition::characterAfter(&v14);
  v12 = v14;
  v14 = 0;
  if (v12)
  {
    if (*(v12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v12);
    }

    else
    {
      *(v12 + 7) -= 2;
    }
  }

  return v3;
}

- (BOOL)directionIsDownstream:(int)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  if ([(WebVisiblePosition *)self textDirection])
  {
    return a3 == 3;
  }

  return a3 == 2;
}

- (id)positionByMovingInDirection:(int)a3 amount:(unsigned int)a4 withAffinityDownstream:(BOOL)a5
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    LOBYTE(v36) = a5;
    if (a3 <= 2)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  v34 = 0;
  v35 = 0;
  v36 = a5;
  if (a3 > 2)
  {
LABEL_15:
    if (a3 != 5)
    {
      if (a3 != 4)
      {
        if (a3 != 3 || !a4)
        {
          goto LABEL_58;
        }

        while (1)
        {
          WebCore::VisiblePosition::left(&v34, 0, 0);
          v10 = v30;
          v30 = 0;
          v11 = v34;
          v34 = v10;
          if (v11)
          {
            if (*(v11 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v11);
              LODWORD(v35) = v31;
              BYTE4(v35) = v32;
              LOBYTE(v36) = v33;
              v30 = 0;
              goto LABEL_20;
            }

            *(v11 + 7) -= 2;
          }

          LODWORD(v35) = v31;
          BYTE4(v35) = v32;
          LOBYTE(v36) = v33;
LABEL_20:
          if (!--a4)
          {
            goto LABEL_58;
          }
        }
      }

      WebCore::VisiblePosition::lineDirectionPointForBlockDirectionNavigation(&v34);
      if (!a4)
      {
        goto LABEL_58;
      }

      while (1)
      {
        WebCore::previousLinePosition();
        v18 = v30;
        v30 = 0;
        v19 = v34;
        v34 = v18;
        if (v19)
        {
          if (*(v19 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v19);
            LODWORD(v35) = v31;
            BYTE4(v35) = v32;
            LOBYTE(v36) = v33;
            v30 = 0;
            goto LABEL_52;
          }

          *(v19 + 7) -= 2;
        }

        LODWORD(v35) = v31;
        BYTE4(v35) = v32;
        LOBYTE(v36) = v33;
LABEL_52:
        if (!--a4)
        {
          goto LABEL_58;
        }
      }
    }

    WebCore::VisiblePosition::lineDirectionPointForBlockDirectionNavigation(&v34);
    if (!a4)
    {
      goto LABEL_58;
    }

    while (1)
    {
      WebCore::nextLinePosition();
      v14 = v30;
      v30 = 0;
      v15 = v34;
      v34 = v14;
      if (v15)
      {
        if (*(v15 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v15);
          LODWORD(v35) = v31;
          BYTE4(v35) = v32;
          LOBYTE(v36) = v33;
          v30 = 0;
          goto LABEL_36;
        }

        *(v15 + 7) -= 2;
      }

      LODWORD(v35) = v31;
      BYTE4(v35) = v32;
      LOBYTE(v36) = v33;
LABEL_36:
      if (!--a4)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_3:
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_58;
    }

    while (1)
    {
      WebCore::VisiblePosition::next();
      v12 = v30;
      v30 = 0;
      v13 = v34;
      v34 = v12;
      if (v13)
      {
        if (*(v13 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v13);
          LODWORD(v35) = v31;
          BYTE4(v35) = v32;
          LOBYTE(v36) = v33;
          v30 = 0;
          goto LABEL_28;
        }

        *(v13 + 7) -= 2;
      }

      LODWORD(v35) = v31;
      BYTE4(v35) = v32;
      LOBYTE(v36) = v33;
LABEL_28:
      if (!--a4)
      {
        goto LABEL_58;
      }
    }
  }

  if (a3 == 1)
  {
    if (!a4)
    {
      goto LABEL_58;
    }

    while (1)
    {
      WebCore::VisiblePosition::previous();
      v16 = v30;
      v30 = 0;
      v17 = v34;
      v34 = v16;
      if (v17)
      {
        if (*(v17 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v17);
          LODWORD(v35) = v31;
          BYTE4(v35) = v32;
          LOBYTE(v36) = v33;
          v30 = 0;
          goto LABEL_44;
        }

        *(v17 + 7) -= 2;
      }

      LODWORD(v35) = v31;
      BYTE4(v35) = v32;
      LOBYTE(v36) = v33;
LABEL_44:
      if (!--a4)
      {
        goto LABEL_58;
      }
    }
  }

  if (a3 == 2 && a4)
  {
    do
    {
      WebCore::VisiblePosition::right(&v34, 0, 0);
      v8 = v30;
      v30 = 0;
      v9 = v34;
      v34 = v8;
      if (v9)
      {
        if (*(v9 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v9);
          LODWORD(v35) = v31;
          BYTE4(v35) = v32;
          LOBYTE(v36) = v33;
          v30 = 0;
          goto LABEL_8;
        }

        *(v9 + 7) -= 2;
      }

      LODWORD(v35) = v31;
      BYTE4(v35) = v32;
      LOBYTE(v36) = v33;
LABEL_8:
      --a4;
    }

    while (a4);
  }

LABEL_58:
  v20 = v34;
  if (v34)
  {
    *(v34 + 7) += 2;
  }

  v26 = v20;
  v27 = v35;
  v28 = BYTE4(v35);
  v29 = v36;
  result = [WebVisiblePosition _wrapVisiblePositionIfValid:&v26];
  v22 = v26;
  v26 = 0;
  if (v22)
  {
    if (*(v22 + 7) == 2)
    {
      v24 = result;
      WebCore::Node::removedLastRef(v22);
      result = v24;
      v23 = v34;
      v34 = 0;
      if (!v23)
      {
        return result;
      }

      goto LABEL_66;
    }

    *(v22 + 7) -= 2;
  }

  v23 = v34;
  v34 = 0;
  if (!v23)
  {
    return result;
  }

LABEL_66:
  if (*(v23 + 7) == 2)
  {
    v25 = result;
    WebCore::Node::removedLastRef(v23);
    return v25;
  }

  else
  {
    *(v23 + 7) -= 2;
  }

  return result;
}

- (BOOL)atBoundaryOfGranularity:(int)a3 inDirection:(int)a4
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
  }

  else
  {
    v6 = 0;
  }

  result = WebCore::atBoundaryOfGranularity();
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      v5 = result;
      WebCore::Node::removedLastRef(v6);
      return v5;
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  return result;
}

- (id)positionOfNextBoundaryOfGranularity:(int)a3 inDirection:(int)a4
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
  }

  else
  {
    v9 = 0;
  }

  WebCore::positionOfNextBoundaryOfGranularity();
  result = [WebVisiblePosition _wrapVisiblePositionIfValid:&v10];
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      v7 = result;
      WebCore::Node::removedLastRef(v5);
      result = v7;
      v6 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_10;
    }

    *(v5 + 7) -= 2;
  }

  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_10:
  if (*(v6 + 7) == 2)
  {
    v8 = result;
    WebCore::Node::removedLastRef(v6);
    return v8;
  }

  else
  {
    *(v6 + 7) -= 2;
  }

  return result;
}

- (BOOL)withinTextUnitOfGranularity:(int)a3 inDirectionIfAtBoundary:(int)a4
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
  }

  else
  {
    v6 = 0;
  }

  result = WebCore::withinTextUnitOfGranularity();
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      v5 = result;
      WebCore::Node::removedLastRef(v6);
      return v5;
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  return result;
}

- (id)enclosingTextUnitOfGranularity:(int)a3 inDirectionIfAtBoundary:(int)a4
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
  }

  else
  {
    v7 = 0;
  }

  WebCore::enclosingTextUnitOfGranularity();
  WebCore::createLiveRange();
  v4 = kit(v11);
  if (v11)
  {
    if (*(v11 + 2) == 1)
    {
      (*(*v11 + 8))();
      if (v10 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    --*(v11 + 2);
  }

  if (v10 != 1)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v9)
  {
    if (*(v9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v9);
      v5 = v8;
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    *(v9 + 7) -= 2;
  }

  v5 = v8;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (*(v5 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v5);
  }

  else
  {
    *(v5 + 7) -= 2;
  }

LABEL_19:
  if (!v7)
  {
    return v4;
  }

  if (*(v7 + 7) != 2)
  {
    *(v7 + 7) -= 2;
    return v4;
  }

  WebCore::Node::removedLastRef(v7);
  return v4;
}

- (id)positionAtStartOrEndOfWord
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    v2 = v76;
    if (v76)
    {
      v3 = 0;
      *(v76 + 7) += 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v2 = 0;
    v76 = 0;
    v77 = 0;
    v3 = 1;
    v78 = 0;
  }

  v74 = v77;
  v75 = BYTE4(v77);
  v4 = v78;
  v5 = WebCore::VisiblePosition::characterAfter(&v76);
  IntPropertyValue = u_getIntPropertyValue(v5, UCHAR_LINE_BREAK);
  if (IntPropertyValue > 0x25 || ((1 << IntPropertyValue) & 0x2001004000) == 0)
  {
    v21 = WebCore::VisiblePosition::characterAfter(&v76);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
    v24 = Predefined;
    if (!v21 || CFCharacterSetIsLongCharacterMember(Predefined, v21))
    {
      while (v76)
      {
        if (WebCore::isStartOfLine(&v76, v23))
        {
          goto LABEL_77;
        }

        WebCore::VisiblePosition::previous();
        v25 = WebCore::VisiblePosition::characterAfter(&v79);
        v26 = v79;
        v79 = 0;
        if (v26)
        {
          if (*(v26 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v26);
          }

          else
          {
            *(v26 + 7) -= 2;
          }
        }

        if (!CFCharacterSetIsLongCharacterMember(v24, v25))
        {
          goto LABEL_77;
        }

        WebCore::VisiblePosition::previous();
        v27 = v79;
        v79 = 0;
        v28 = v76;
        v76 = v27;
        if (v28)
        {
          if (*(v28 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v28);
            v29 = v79;
            LODWORD(v77) = v80;
            BYTE4(v77) = v81;
            LOBYTE(v78) = v82;
            v79 = 0;
            if (v29)
            {
              if (*(v29 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v29);
              }

              else
              {
                *(v29 + 7) -= 2;
              }
            }

            continue;
          }

          *(v28 + 7) -= 2;
        }

        LODWORD(v77) = v80;
        BYTE4(v77) = v81;
        LOBYTE(v78) = v82;
      }

LABEL_143:
      v33 = 0;
      goto LABEL_79;
    }

    if (!v76)
    {
      goto LABEL_143;
    }

    if (WebCore::isStartOfLine(&v76, v23))
    {
      goto LABEL_77;
    }

    WebCore::VisiblePosition::previous();
    v38 = WebCore::VisiblePosition::characterAfter(&v79);
    v39 = v79;
    v79 = 0;
    if (v39)
    {
      if (*(v39 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v39);
      }

      else
      {
        *(v39 + 7) -= 2;
      }
    }

    if (CFCharacterSetIsLongCharacterMember(v24, v38))
    {
      goto LABEL_77;
    }

    WebCore::VisiblePosition::previous();
    v41 = v79;
    v79 = 0;
    v42 = v76;
    v76 = v41;
    if (v42)
    {
      if (*(v42 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v42);
        v43 = v79;
        LODWORD(v77) = v80;
        BYTE4(v77) = v81;
        LOBYTE(v78) = v82;
        v79 = 0;
        if (v43)
        {
          if (*(v43 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v43);
          }

          else
          {
            *(v43 + 7) -= 2;
          }
        }

LABEL_109:
        if (!v76)
        {
          goto LABEL_143;
        }

        if (WebCore::isStartOfLine(&v76, v40))
        {
          goto LABEL_77;
        }

        WebCore::VisiblePosition::previous();
        v44 = WebCore::VisiblePosition::characterAfter(&v79);
        v45 = v79;
        v79 = 0;
        if (v45)
        {
          if (*(v45 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v45);
          }

          else
          {
            *(v45 + 7) -= 2;
          }
        }

        if (CFCharacterSetIsLongCharacterMember(v24, v44))
        {
          goto LABEL_77;
        }

        WebCore::VisiblePosition::previous();
        v47 = v79;
        v79 = 0;
        v48 = v76;
        v76 = v47;
        if (v48)
        {
          if (*(v48 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v48);
            v49 = v79;
            LODWORD(v77) = v80;
            BYTE4(v77) = v81;
            LOBYTE(v78) = v82;
            v79 = 0;
            if (v49)
            {
              if (*(v49 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v49);
              }

              else
              {
                *(v49 + 7) -= 2;
              }
            }

LABEL_124:
            if ((v3 & 1) == 0)
            {
              *(v2 + 7) += 2;
            }

            v50 = v76;
            v76 = v2;
            v51 = v2;
            if (v50)
            {
              if (*(v50 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v50);
                v51 = v76;
              }

              else
              {
                *(v50 + 7) -= 2;
                v51 = v2;
              }
            }

            LODWORD(v77) = v74;
            BYTE4(v77) = v75;
            LOBYTE(v78) = v4;
            if (!v51)
            {
              goto LABEL_143;
            }

            while (1)
            {
              if (WebCore::isEndOfLine(&v76, v46))
              {
                goto LABEL_77;
              }

              v52 = WebCore::VisiblePosition::characterAfter(&v76);
              if (CFCharacterSetIsLongCharacterMember(v24, v52))
              {
                goto LABEL_77;
              }

              WebCore::VisiblePosition::next();
              v53 = v79;
              v79 = 0;
              v54 = v76;
              v76 = v53;
              if (v54)
              {
                if (*(v54 + 7) == 2)
                {
                  WebCore::Node::removedLastRef(v54);
                  v55 = v79;
                  LODWORD(v77) = v80;
                  BYTE4(v77) = v81;
                  LOBYTE(v78) = v82;
                  v79 = 0;
                  if (v55)
                  {
                    if (*(v55 + 7) == 2)
                    {
                      WebCore::Node::removedLastRef(v55);
                    }

                    else
                    {
                      *(v55 + 7) -= 2;
                    }
                  }

                  goto LABEL_133;
                }

                *(v54 + 7) -= 2;
              }

              LODWORD(v77) = v80;
              BYTE4(v77) = v81;
              LOBYTE(v78) = v82;
LABEL_133:
              if (!v76)
              {
                goto LABEL_143;
              }
            }
          }

          *(v48 + 7) -= 2;
        }

        LODWORD(v77) = v80;
        BYTE4(v77) = v81;
        LOBYTE(v78) = v82;
        goto LABEL_124;
      }

      *(v42 + 7) -= 2;
    }

    LODWORD(v77) = v80;
    BYTE4(v77) = v81;
    LOBYTE(v78) = v82;
    goto LABEL_109;
  }

  WebCore::startOfWord();
  v7 = v79;
  if (v79)
  {
    *(v79 + 7) += 2;
  }

  v71 = v7;
  v72 = v80;
  v73 = v81;
  if ((v81 & 8) == 0 && ((v8 = v81 & 7, v8 == 2) || v8 == 4))
  {
    v9 = WebCore::Position::offsetForPositionAfterAnchor(&v71);
  }

  else
  {
    v9 = v72;
  }

  v10 = v76;
  if (v76)
  {
    *(v76 + 7) += 2;
  }

  v67 = v10;
  v68 = v77;
  v69 = BYTE4(v77);
  if ((v77 & 0x800000000) == 0 && ((v11 = BYTE4(v77) & 7, v11 == 2) || v11 == 4))
  {
    v12 = WebCore::Position::offsetForPositionAfterAnchor(&v67);
    v10 = v67;
  }

  else
  {
    v12 = v68;
  }

  v13 = v9 + 1;
  v67 = 0;
  if (!v10)
  {
LABEL_24:
    if (v13 < v12)
    {
      goto LABEL_25;
    }

LABEL_33:
    WebCore::VisiblePosition::VisiblePosition();
    v18 = v67;
    v67 = 0;
    v19 = v76;
    v76 = v18;
    if (v19)
    {
      if (*(v19 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v19);
        v30 = v67;
        LODWORD(v77) = v68;
        BYTE4(v77) = v69;
        LOBYTE(v78) = v70;
        v67 = 0;
        if (!v30)
        {
          goto LABEL_68;
        }

        v31 = *(v30 + 7) - 2;
        if (*(v30 + 7) != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_59;
      }

      *(v19 + 7) -= 2;
    }

    LODWORD(v77) = v68;
    BYTE4(v77) = v69;
    LOBYTE(v78) = v70;
    v20 = v71;
    v71 = 0;
    if (v20)
    {
      goto LABEL_69;
    }

    goto LABEL_71;
  }

  if (*(v10 + 7) != 2)
  {
    *(v10 + 7) -= 2;
    goto LABEL_24;
  }

  WebCore::Node::removedLastRef(v10);
  if (v13 >= v12)
  {
    goto LABEL_33;
  }

LABEL_25:
  WebCore::endOfWord();
  v14 = v67;
  if (v67)
  {
    *(v67 + 7) += 2;
  }

  v64 = v14;
  v65 = v68;
  v66 = v69;
  WebCore::VisiblePosition::VisiblePosition();
  v15 = v60;
  v60 = 0;
  v16 = v76;
  v76 = v15;
  if (!v16)
  {
LABEL_30:
    LODWORD(v77) = v61;
    BYTE4(v77) = v62;
    LOBYTE(v78) = v63;
    v17 = v64;
    v64 = 0;
    if (!v17)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (*(v16 + 7) != 2)
  {
    *(v16 + 7) -= 2;
    goto LABEL_30;
  }

  WebCore::Node::removedLastRef(v16);
  LODWORD(v77) = v61;
  BYTE4(v77) = v62;
  LOBYTE(v78) = v63;
  v60 = 0;
  v17 = v64;
  v64 = 0;
  if (!v17)
  {
    goto LABEL_65;
  }

LABEL_62:
  if (*(v17 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v17);
  }

  else
  {
    *(v17 + 7) -= 2;
  }

LABEL_65:
  v30 = v67;
  v67 = 0;
  if (!v30)
  {
    goto LABEL_68;
  }

  v31 = *(v30 + 7) - 2;
  if (*(v30 + 7) == 2)
  {
LABEL_59:
    WebCore::Node::removedLastRef(v30);
    v20 = v71;
    v71 = 0;
    if (v20)
    {
      goto LABEL_69;
    }

LABEL_71:
    v32 = v79;
    v79 = 0;
    if (!v32)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

LABEL_67:
  *(v30 + 7) = v31;
LABEL_68:
  v20 = v71;
  v71 = 0;
  if (!v20)
  {
    goto LABEL_71;
  }

LABEL_69:
  if (*(v20 + 7) != 2)
  {
    *(v20 + 7) -= 2;
    goto LABEL_71;
  }

  WebCore::Node::removedLastRef(v20);
  v32 = v79;
  v79 = 0;
  if (!v32)
  {
    goto LABEL_77;
  }

LABEL_74:
  if (*(v32 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v32);
  }

  else
  {
    *(v32 + 7) -= 2;
  }

LABEL_77:
  v33 = v76;
  if (v76)
  {
    *(v76 + 7) += 2;
  }

LABEL_79:
  v56 = v33;
  v57 = v77;
  v58 = BYTE4(v77);
  v59 = v78;
  v34 = [WebVisiblePosition _wrapVisiblePositionIfValid:&v56];
  v35 = v56;
  v56 = 0;
  if (!v35)
  {
    goto LABEL_82;
  }

  if (*(v35 + 7) != 2)
  {
    *(v35 + 7) -= 2;
LABEL_82:
    if (v3)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  WebCore::Node::removedLastRef(v35);
  if (v3)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (*(v2 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v2);
    v36 = v76;
    v76 = 0;
    if (!v36)
    {
      return v34;
    }

    goto LABEL_90;
  }

  *(v2 + 7) -= 2;
LABEL_87:
  v36 = v76;
  v76 = 0;
  if (!v36)
  {
    return v34;
  }

LABEL_90:
  if (*(v36 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v36);
  }

  else
  {
    *(v36 + 7) -= 2;
  }

  return v34;
}

- (BOOL)isEditable
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
    v2 = v7;
    if (v7)
    {
      *(v7 + 7) += 2;
    }
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  v8 = v2;
  result = WebCore::isEditablePosition();
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      v5 = result;
      WebCore::Node::removedLastRef(v8);
      result = v5;
      v4 = v7;
      if (!v7)
      {
        return result;
      }

      goto LABEL_11;
    }

    *(v8 + 7) -= 2;
  }

  v4 = v7;
  if (!v7)
  {
    return result;
  }

LABEL_11:
  if (*(v4 + 7) == 2)
  {
    v6 = result;
    WebCore::Node::removedLastRef(v4);
    return v6;
  }

  else
  {
    *(v4 + 7) -= 2;
  }

  return result;
}

- (BOOL)requiresContextForWordBoundary
{
  if (self)
  {
    [(WebVisiblePosition *)self _visiblePosition];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v2 = WebCore::VisiblePosition::characterAfter(v11);
  IntPropertyValue = u_getIntPropertyValue(v2, UCHAR_LINE_BREAK);
  if (IntPropertyValue <= 0x25 && ((1 << IntPropertyValue) & 0x2001004000) != 0)
  {
    v4 = 1;
    v5 = v11[0];
    v11[0] = 0;
    if (!v5)
    {
      return v4 & 1;
    }
  }

  else
  {
    WebCore::VisiblePosition::previous();
    v6 = WebCore::VisiblePosition::characterAfter(&v12);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        v8 = v6;
        WebCore::Node::removedLastRef(v7);
        v6 = v8;
      }

      else
      {
        *(v7 + 7) -= 2;
      }
    }

    v9 = u_getIntPropertyValue(v6, UCHAR_LINE_BREAK);
    if (v9 <= 0x25)
    {
      v4 = 0x2001004000uLL >> v9;
    }

    else
    {
      v4 = 0;
    }

    v5 = v11[0];
    v11[0] = 0;
    if (!v5)
    {
      return v4 & 1;
    }
  }

  if (*(v5 + 7) != 2)
  {
    *(v5 + 7) -= 2;
    return v4 & 1;
  }

  WebCore::Node::removedLastRef(v5);
  return v4 & 1;
}

- (BOOL)atAlphaNumericBoundaryInDirection:(int)a3
{
  v3 = *&a3;
  if (_MergedGlobals_27)
  {
    if (self)
    {
LABEL_3:
      [(WebVisiblePosition *)self _visiblePosition];
      goto LABEL_6;
    }
  }

  else
  {
    qword_1ED6A6308 = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
    _MergedGlobals_27 = 1;
    if (self)
    {
      goto LABEL_3;
    }
  }

  memset(v18, 0, sizeof(v18));
LABEL_6:
  WebCore::VisiblePosition::previous();
  v5 = WebCore::VisiblePosition::characterAfter(&v19);
  v6 = v19;
  v19 = 0;
  if (v6)
  {
    if (*(v6 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v6);
    }

    else
    {
      *(v6 + 7) -= 2;
    }
  }

  v7 = WebCore::VisiblePosition::characterAfter(v18);
  IsCharacterMember = CFCharacterSetIsCharacterMember(qword_1ED6A6308, v5);
  v9 = CFCharacterSetIsCharacterMember(qword_1ED6A6308, v7);
  v10 = [(WebVisiblePosition *)self directionIsDownstream:v3];
  if (v9)
  {
    v11 = IsCharacterMember == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = IsCharacterMember == 0;
  }

  v14 = !v13;
  if (v10)
  {
    result = v14;
  }

  else
  {
    result = v12;
  }

  v16 = v18[0];
  v18[0] = 0;
  if (v16)
  {
    if (*(v16 + 7) == 2)
    {
      v17 = result;
      WebCore::Node::removedLastRef(v16);
      return v17;
    }

    else
    {
      *(v16 + 7) -= 2;
    }
  }

  return result;
}

- (id)enclosingRangeWithDictationPhraseAlternatives:(id *)a3
{
  if (!a3)
  {
    return 0;
  }

  *a3 = 0;
  if (!self)
  {
    return 0;
  }

  [(WebVisiblePosition *)self _visiblePosition];
  v4 = v42;
  if (v42)
  {
    v5 = *(v42 + 28);
    v6 = v5 + 2;
    *(v42 + 28) = v5 + 2;
    if (v5)
    {
      *(v4 + 7) = v5;
      v7 = v4;
    }

    else
    {
      WebCore::Node::removedLastRef(v4);
      v7 = v42;
      if (!v42)
      {
LABEL_10:
        v33 = v7;
        v34 = v43;
        v35 = v44;
        if ((v44 & 8) == 0 && ((v8 = v44 & 7, v8 == 2) || v8 == 4))
        {
          v9 = WebCore::Position::offsetForPositionAfterAnchor(&v33);
          v7 = v33;
        }

        else
        {
          v9 = v34;
        }

        v33 = 0;
        if (v7)
        {
          if (v7[7] == 2)
          {
            WebCore::Node::removedLastRef(v7);
            v10 = *(v4[6] + 8);
            if (*(v10 + 195))
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v7[7] -= 2;
        }

        v10 = *(v4[6] + 8);
        if (*(v10 + 195))
        {
          goto LABEL_22;
        }

LABEL_21:
        WebCore::Document::ensureMarkers(v10);
LABEL_22:
        v11 = WebCore::DocumentMarkerController::markersFor();
        v13 = v39;
        v14 = v41;
        if (!v41)
        {
          v4 = 0;
LABEL_60:
          if (v13)
          {
            v39 = 0;
            v40 = 0;
            WTF::fastFree(v13, v12);
          }

          v27 = v42;
          v42 = 0;
          if (v27)
          {
            if (*(v27 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v27);
            }

            else
            {
              *(v27 + 7) -= 2;
            }
          }

          return v4;
        }

        v15 = 0;
        while (1)
        {
          v16 = *(v39 + v15);
          if (!v16)
          {
            goto LABEL_68;
          }

          v17 = *(v16 + 8);
          if (!v17)
          {
            goto LABEL_68;
          }

          if (*(v17 + 12) <= v9 && *(v17 + 16) >= v9)
          {
            break;
          }

          v15 += 8;
          if (8 * v41 == v15)
          {
            v4 = 0;
            goto LABEL_53;
          }
        }

        if (*(v17 + 80) != 2)
        {
          mpark::throw_bad_variant_access(v11);
        }

        WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v17 + 32, &v33);
        v18 = v33;
        v33 = 0;
        if (v18)
        {
          v19 = v18;
          v20 = v33;
          *a3 = v18;
          v33 = 0;
          if (v20)
          {
          }
        }

        else
        {
          *a3 = 0;
        }

        v21 = *(v13 + v15);
        if (!v21 || !*(v21 + 8))
        {
LABEL_68:
          __break(0xC471u);
          JUMPOUT(0x1C7B18850);
        }

        WebCore::makeSimpleRange();
        v33 = v29;
        v34 = v30;
        v36 = v31;
        v37 = v32;
        v38 = 1;
        WebCore::createLiveRange();
        v4 = kit(v45);
        v22 = v45;
        v45 = 0;
        if (v22)
        {
          if (*(v22 + 2) == 1)
          {
            (*(*v22 + 8))(v22);
            if (v38 != 1)
            {
LABEL_52:
              v14 = v41;
              v13 = v39;
              if (!v41)
              {
                goto LABEL_60;
              }

LABEL_53:
              v25 = 8 * v14;
              do
              {
                while (1)
                {
                  v26 = *v13;
                  *v13 = 0;
                  if (v26)
                  {
                    if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
                    {
                      break;
                    }
                  }

                  v13 = (v13 + 8);
                  v25 -= 8;
                  if (!v25)
                  {
                    goto LABEL_59;
                  }
                }

                atomic_store(1u, v26);
                WTF::fastFree(v26, v12);
                v13 = (v13 + 8);
                v25 -= 8;
              }

              while (v25);
LABEL_59:
              v13 = v39;
              goto LABEL_60;
            }

LABEL_44:
            v23 = v36;
            v36 = 0;
            if (v23)
            {
              if (*(v23 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v23);
              }

              else
              {
                *(v23 + 7) -= 2;
              }
            }

            v24 = v33;
            v33 = 0;
            if (v24)
            {
              if (*(v24 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v24);
              }

              else
              {
                *(v24 + 7) -= 2;
              }
            }

            goto LABEL_52;
          }

          --*(v22 + 2);
        }

        if (v38 != 1)
        {
          goto LABEL_52;
        }

        goto LABEL_44;
      }

      v6 = *(v42 + 28) + 2;
    }

    v7[7] = v6;
    goto LABEL_10;
  }

  return v4;
}

- (id)enclosingRangeWithCorrectionIndicator
{
  if (!self)
  {
    return 0;
  }

  [(WebVisiblePosition *)self _visiblePosition];
  v2 = v36;
  if (v36)
  {
    v3 = *(v36 + 28);
    v4 = v3 + 2;
    *(v36 + 28) = v3 + 2;
    if (v3)
    {
      *(v2 + 7) = v3;
      v5 = v2;
    }

    else
    {
      WebCore::Node::removedLastRef(v2);
      v5 = v36;
      if (!v36)
      {
LABEL_9:
        v27 = v5;
        v28 = v37;
        v29 = v38;
        if ((v38 & 8) == 0 && ((v6 = v38 & 7, v6 != 2) ? (v7 = v6 == 4) : (v7 = 1), v7))
        {
          v8 = WebCore::Position::offsetForPositionAfterAnchor(&v27);
          v5 = v27;
        }

        else
        {
          v8 = v28;
        }

        v27 = 0;
        if (v5)
        {
          if (*(v5 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v5);
            v9 = *(v2[6] + 8);
            if (*(v9 + 195))
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          *(v5 + 7) -= 2;
        }

        v9 = *(v2[6] + 8);
        if (*(v9 + 195))
        {
          goto LABEL_24;
        }

LABEL_23:
        WebCore::Document::ensureMarkers(v9);
LABEL_24:
        WebCore::DocumentMarkerController::markersFor();
        v11 = v33;
        v12 = v35;
        if (!v35)
        {
          v2 = 0;
LABEL_55:
          if (v11)
          {
            v33 = 0;
            v34 = 0;
            WTF::fastFree(v11, v10);
          }

          v21 = v36;
          v36 = 0;
          if (v21)
          {
            if (*(v21 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v21);
            }

            else
            {
              *(v21 + 7) -= 2;
            }
          }

          return v2;
        }

        v13 = 0;
        while (1)
        {
          v14 = *(v33 + v13);
          if (!v14 || (v10 = *(v14 + 8)) == 0)
          {
            result = 121;
            __break(0xC471u);
            return result;
          }

          if (v10[3] <= v8 && v10[4] >= v8)
          {
            break;
          }

          v13 += 8;
          if (8 * v35 == v13)
          {
            v2 = 0;
            goto LABEL_48;
          }
        }

        WebCore::makeSimpleRange();
        v27 = v23;
        v28 = v24;
        v30 = v25;
        v31 = v26;
        v32 = 1;
        WebCore::createLiveRange();
        v2 = kit(v39);
        v15 = v39;
        v39 = 0;
        if (v15)
        {
          if (*(v15 + 2) == 1)
          {
            (*(*v15 + 8))(v15);
            if (v32 != 1)
            {
LABEL_47:
              v12 = v35;
              v11 = v33;
              if (!v35)
              {
                goto LABEL_55;
              }

LABEL_48:
              v18 = 8 * v12;
              do
              {
                while (1)
                {
                  v19 = *v11;
                  *v11 = 0;
                  if (v19)
                  {
                    if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
                    {
                      break;
                    }
                  }

                  v11 = (v11 + 8);
                  v18 -= 8;
                  if (!v18)
                  {
                    goto LABEL_54;
                  }
                }

                atomic_store(1u, v19);
                v20 = v11;
                WTF::fastFree(v19, v10);
                v11 = (v20 + 8);
                v18 -= 8;
              }

              while (v18);
LABEL_54:
              v11 = v33;
              goto LABEL_55;
            }

LABEL_39:
            v16 = v30;
            v30 = 0;
            if (v16)
            {
              if (*(v16 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v16);
              }

              else
              {
                *(v16 + 7) -= 2;
              }
            }

            v17 = v27;
            v27 = 0;
            if (v17)
            {
              if (*(v17 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v17);
              }

              else
              {
                *(v17 + 7) -= 2;
              }
            }

            goto LABEL_47;
          }

          --*(v15 + 2);
        }

        if (v32 != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_39;
      }

      v4 = *(v36 + 28) + 2;
    }

    *(v5 + 7) = v4;
    goto LABEL_9;
  }

  return v2;
}

- (unint64_t)affinity
{
  if (!self)
  {
    return 0;
  }

  [(WebVisiblePosition *)self _visiblePosition];
  v2 = v5;
  v3 = v6;
  v5 = 0;
  if (!v2)
  {
    return v3;
  }

  if (*(v2 + 7) != 2)
  {
    *(v2 + 7) -= 2;
    return v3;
  }

  WebCore::Node::removedLastRef(v2);
  return v3;
}

@end