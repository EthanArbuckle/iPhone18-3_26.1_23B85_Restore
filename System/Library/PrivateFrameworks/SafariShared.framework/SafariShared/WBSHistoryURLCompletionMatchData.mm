@interface WBSHistoryURLCompletionMatchData
- (BOOL)matchesAutocompleteTrigger:(id)a3 isStrengthened:(BOOL)a4;
- (WBSHistoryURLCompletionMatchData)initWithCompletionItem:(void *)a3;
- (id)userVisibleURLStringAtIndex:(unint64_t)a3;
- (id)userVisibleURLStringForPageTitleAtIndex:(unint64_t)a3;
- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)a3;
- (void)enumeratePageTitlesUsingBlock:(id)a3;
- (void)enumerateUserVisibleURLsUsingBlock:(id)a3;
@end

@implementation WBSHistoryURLCompletionMatchData

- (WBSHistoryURLCompletionMatchData)initWithCompletionItem:(void *)a3
{
  v7.receiver = self;
  v7.super_class = WBSHistoryURLCompletionMatchData;
  v4 = [(WBSHistoryURLCompletionMatchData *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WBSHistoryURLCompletionMatchData *)v4 initWithCompletionItem:a3];
  }

  return v5;
}

- (id)userVisibleURLStringAtIndex:(unint64_t)a3
{
  m_ptr = self->_item.m_ptr;
  if (!a3)
  {
LABEL_4:
    v8 = [*(m_ptr + 8) safari_userVisibleURL];

    return v8;
  }

  v7 = m_ptr + 32;
  v6 = *(m_ptr + 4);
  if (a3 - 1 < (*(v7 + 1) - v6) >> 3)
  {
    m_ptr = *(v6 + 8 * (a3 - 1));
    goto LABEL_4;
  }

  v8 = 0;

  return v8;
}

- (id)userVisibleURLStringForPageTitleAtIndex:(unint64_t)a3
{
  v3 = [*(self->_item.m_ptr + 8) safari_userVisibleURL];

  return v3;
}

- (void)enumerateUserVisibleURLsUsingBlock:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = *(self->_item.m_ptr + 8);
  v6 = [v5 safari_userVisibleURL];
  v4[2](v4, v6, 0, &v15);

  if ((v15 & 1) == 0)
  {
    m_ptr = self->_item.m_ptr;
    v8 = *(m_ptr + 4);
    v9 = *(m_ptr + 5);
    if (v8 != v9)
    {
      v10 = v8 + 8;
      v11 = 1;
      do
      {
        v12 = *(*(v10 - 8) + 64);
        v13 = [v12 safari_userVisibleURL];
        v4[2](v4, v13, v11, &v15);

        if (v15)
        {
          break;
        }

        ++v11;
        v14 = v10 == v9;
        v10 += 8;
      }

      while (!v14);
    }
  }
}

- (void)enumeratePageTitlesUsingBlock:(id)a3
{
  v3 = *(a3 + 2);
  v4 = a3;
  v3();
}

- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__WBSHistoryURLCompletionMatchData_enumeratePageTitlesAndUserVisibleURLsUsingBlock___block_invoke;
  v6[3] = &unk_1E7FC8418;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSHistoryURLCompletionMatchData *)self enumerateUserVisibleURLsUsingBlock:v6];
}

- (BOOL)matchesAutocompleteTrigger:(id)a3 isStrengthened:(BOOL)a4
{
  v4 = a4;
  m_ptr = self->_item.m_ptr;
  v7 = *(m_ptr + 9);
  v8 = *(m_ptr + 18);
  v9 = *(m_ptr + 8);
  v10 = v7;
  LOBYTE(v4) = [WBSURLCompletionMatchDataHelpers typedStringMatchesTitleAndURLAutocompleteTriggers:a3 title:v10 urlString:v9 autoCompleteTriggers:v8 isStrengthened:v4];

  return v4;
}

- (void)initWithCompletionItem:(uint64_t)a1 .cold.1(uint64_t a1, atomic_uint *a2)
{
  v3 = a1;
  if (a2)
  {
    atomic_fetch_add(a2, 1u);
  }

  v4 = *(a1 + 8);
  v3[1] = a2;
  if (v4)
  {
    v6 = v3;
    WTF::ThreadSafeRefCounted<SafariShared::HistoryURLCompletionItem,(WTF::DestructionThread)0>::deref(v4);
    v3 = v6;
    v2 = vars8;
  }

  return v3;
}

@end