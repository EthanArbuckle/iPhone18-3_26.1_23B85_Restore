void cmark_gfm_core_extensions_ensure_registered()
{
  if ((registered & 1) == 0)
  {
    registered = 1;
    cmark_register_plugin(core_extensions_registration);
  }
}

void cmark_register_plugin(unsigned int (*a1)(void))
{
  v2 = cmark_plugin_new();
  if (a1())
  {
    v3 = cmark_plugin_steal_syntax_extensions(v2);
    v4 = v3;
    if (v3)
    {
      v5 = syntax_extensions;
      v6 = v3;
      do
      {
        v5 = cmark_llist_append(&CMARK_DEFAULT_MEM_ALLOCATOR, v5, v6[1]);
        syntax_extensions = v5;
        v6 = *v6;
      }

      while (v6);
    }

    cmark_llist_free(&CMARK_DEFAULT_MEM_ALLOCATOR, v4);
  }

  cmark_plugin_free(v2);
}

void *cmark_plugin_new()
{
  result = CMARK_DEFAULT_MEM_ALLOCATOR(1uLL, 8uLL);
  *result = 0;
  return result;
}

void *xcalloc(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0xEC576D4AuLL);
  if (!result)
  {
    xcalloc_cold_1();
  }

  return result;
}

void *create_table_extension()
{
  v0 = cmark_syntax_extension_new("table");
  cmark_register_node_flag(&CMARK_NODE__TABLE_VISITED);
  cmark_syntax_extension_set_match_block_func(v0, matches_0);
  cmark_syntax_extension_set_open_block_func(v0, try_opening_table_block);
  cmark_syntax_extension_set_get_type_string_func(v0, get_type_string_1);
  cmark_syntax_extension_set_can_contain_func(v0, can_contain_1);
  cmark_syntax_extension_set_contains_inlines_func(v0, contains_inlines);
  cmark_syntax_extension_set_commonmark_render_func(v0, commonmark_render_1);
  cmark_syntax_extension_set_plaintext_render_func(v0, commonmark_render_1);
  cmark_syntax_extension_set_latex_render_func(v0, latex_render_0);
  cmark_syntax_extension_set_xml_attr_func(v0, xml_attr_0);
  cmark_syntax_extension_set_man_render_func(v0, man_render_0);
  cmark_syntax_extension_set_html_render_func(v0, html_render_1);
  cmark_syntax_extension_set_opaque_alloc_func(v0, opaque_alloc);
  cmark_syntax_extension_set_opaque_free_func(v0, opaque_free);
  cmark_syntax_extension_set_commonmark_escape_func(v0, escape);
  CMARK_NODE_TABLE = cmark_syntax_extension_add_node(0);
  CMARK_NODE_TABLE_ROW = cmark_syntax_extension_add_node(0);
  CMARK_NODE_TABLE_CELL = cmark_syntax_extension_add_node(0);
  return v0;
}

uint64_t core_extensions_registration(void **a1)
{
  table_extension = create_table_extension();
  cmark_plugin_register_syntax_extension(a1, table_extension);
  strikethrough_extension = create_strikethrough_extension();
  cmark_plugin_register_syntax_extension(a1, strikethrough_extension);
  autolink_extension = create_autolink_extension();
  cmark_plugin_register_syntax_extension(a1, autolink_extension);
  tagfilter_extension = create_tagfilter_extension();
  cmark_plugin_register_syntax_extension(a1, tagfilter_extension);
  tasklist_extension = create_tasklist_extension();
  cmark_plugin_register_syntax_extension(a1, tasklist_extension);
  return 1;
}

void *cmark_syntax_extension_new(const char *a1)
{
  v2 = CMARK_DEFAULT_MEM_ALLOCATOR(1uLL, 0xB8uLL);
  v3 = strlen(a1);
  v4 = CMARK_DEFAULT_MEM_ALLOCATOR(v3 + 1, 1uLL);
  v2[5] = v4;
  strcpy(v4, a1);
  return v2;
}

_WORD *cmark_register_node_flag(_WORD *result)
{
  if (*result)
  {
    cmark_register_node_flag_cold_1();
  }

  v1 = cmark_register_node_flag_nextflag;
  if (!cmark_register_node_flag_nextflag)
  {
    cmark_register_node_flag_cold_2();
  }

  *result = cmark_register_node_flag_nextflag;
  cmark_register_node_flag_nextflag = 2 * v1;
  return result;
}

void *create_autolink_extension()
{
  v0 = cmark_syntax_extension_new("autolink");
  cmark_syntax_extension_set_match_inline_func(v0, match);
  cmark_syntax_extension_set_postprocess_func(v0, postprocess);
  default_mem_allocator = cmark_get_default_mem_allocator();
  v2 = cmark_llist_append(default_mem_allocator, 0, 58);
  v3 = cmark_llist_append(default_mem_allocator, v2, 119);
  cmark_syntax_extension_set_special_inline_chars(v0, v3);
  return v0;
}

void *create_strikethrough_extension()
{
  v0 = cmark_syntax_extension_new("strikethrough");
  cmark_syntax_extension_set_get_type_string_func(v0, get_type_string_0);
  cmark_syntax_extension_set_can_contain_func(v0, can_contain_0);
  cmark_syntax_extension_set_commonmark_render_func(v0, commonmark_render_0);
  cmark_syntax_extension_set_latex_render_func(v0, latex_render);
  cmark_syntax_extension_set_man_render_func(v0, man_render);
  cmark_syntax_extension_set_html_render_func(v0, html_render_0);
  cmark_syntax_extension_set_plaintext_render_func(v0, plaintext_render);
  CMARK_NODE_STRIKETHROUGH = cmark_syntax_extension_add_node(1);
  cmark_syntax_extension_set_match_inline_func(v0, match_0);
  cmark_syntax_extension_set_inline_from_delim_func(v0, insert);
  default_mem_allocator = cmark_get_default_mem_allocator();
  v2 = cmark_llist_append(default_mem_allocator, 0, 126);
  cmark_syntax_extension_set_special_inline_chars(v0, v2);
  cmark_syntax_extension_set_emphasis(v0, 1);
  return v0;
}

void *cmark_llist_append(uint64_t (**a1)(uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v5 = (*a1)(1, 16);
  *v5 = 0;
  v5[1] = a3;
  if (!a2)
  {
    return v5;
  }

  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  *v7 = v5;
  return a2;
}

uint64_t cmark_syntax_extension_add_node(int a1)
{
  v1 = &CMARK_NODE_LAST_INLINE;
  if (!a1)
  {
    v1 = &CMARK_NODE_LAST_BLOCK;
  }

  if ((~*v1 & 0x3FFF) == 0)
  {
    cmark_syntax_extension_add_node_cold_1();
  }

  result = (*v1 + 1);
  *v1 = result;
  return result;
}

void *create_tagfilter_extension()
{
  v0 = cmark_syntax_extension_new("tagfilter");
  cmark_syntax_extension_set_html_filter_func(v0, filter);
  return v0;
}

void *create_tasklist_extension()
{
  v0 = cmark_syntax_extension_new("tasklist");
  cmark_syntax_extension_set_match_block_func(v0, matches);
  cmark_syntax_extension_set_get_type_string_func(v0, get_type_string);
  cmark_syntax_extension_set_open_block_func(v0, open_tasklist_item);
  cmark_syntax_extension_set_can_contain_func(v0, can_contain);
  cmark_syntax_extension_set_commonmark_render_func(v0, commonmark_render);
  cmark_syntax_extension_set_plaintext_render_func(v0, commonmark_render);
  cmark_syntax_extension_set_html_render_func(v0, html_render);
  cmark_syntax_extension_set_xml_attr_func(v0, xml_attr);
  return v0;
}

uint64_t cmark_plugin_steal_syntax_extensions(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return v1;
}

uint64_t cmark_llist_free(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    do
    {
      v3 = *a2;
      result = (*(v2 + 16))(a2);
      a2 = v3;
    }

    while (v3);
  }

  return result;
}

void cmark_plugin_free(void **a1)
{
  cmark_llist_free_full(&CMARK_DEFAULT_MEM_ALLOCATOR, *a1, cmark_syntax_extension_free);
  v2 = off_2A1A98AD0;

  v2(a1);
}

uint64_t cmark_llist_free_full(uint64_t result, void *a2, void (*a3)(uint64_t, void))
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      if (a3)
      {
        a3(v5, v4[1]);
      }

      v6 = *v4;
      result = (*(v5 + 16))(v4);
      v4 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t cmark_parser_new_with_mem(int a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  v4 = (*a2)(1, 176);
  *v4 = a2;
  *(v4 + 120) = a1;
  cmark_set_default_skip_chars((v4 + 160), 0);
  cmark_set_default_special_chars((v4 + 168), 0);
  cmark_parser_reset(v4);
  return v4;
}

__int128 **cmark_set_default_skip_chars(__int128 **result, int a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = cmark_set_default_skip_chars_default_skip_chars;
    v4 = unk_2A13BB6C1;
    v5 = unk_2A13BB6E1;
    v2[2] = xmmword_2A13BB6D1;
    v2[3] = v5;
    *v2 = v3;
    v2[1] = v4;
    v6 = xmmword_2A13BB6F1;
    v7 = unk_2A13BB701;
    v8 = unk_2A13BB721;
    v2[6] = xmmword_2A13BB711;
    v2[7] = v8;
    v2[4] = v6;
    v2[5] = v7;
    v9 = xmmword_2A13BB731;
    v10 = unk_2A13BB741;
    v11 = unk_2A13BB761;
    v2[10] = xmmword_2A13BB751;
    v2[11] = v11;
    v2[8] = v9;
    v2[9] = v10;
    v12 = xmmword_2A13BB771;
    v13 = unk_2A13BB781;
    v14 = unk_2A13BB7A1;
    v2[14] = xmmword_2A13BB791;
    v2[15] = v14;
    v2[12] = v12;
    v2[13] = v13;
  }

  else
  {
    *result = &cmark_set_default_skip_chars_default_skip_chars;
  }

  return result;
}

__n128 cmark_parser_reset(uint64_t a1)
{
  v2 = *(a1 + 120);
  v3 = *a1;
  v7 = *(a1 + 136);
  v8 = *(a1 + 160);
  cmark_parser_dispose(a1);
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *a1 = v3;
  cmark_strbuf_init(v3, (a1 + 64), 256);
  cmark_strbuf_init(*a1, (a1 + 96), 0);
  v4 = *a1;
  v5 = (**a1)(1, 184);
  cmark_strbuf_init(v4, v5, 32);
  *(v5 + 100) = 98305;
  *(v5 + 80) = 0x100000001;
  *(v5 + 88) = 1;
  *(a1 + 8) = cmark_reference_map_new(*a1);
  *(a1 + 16) = v5;
  *(a1 + 24) = v5;
  result = v8;
  *(a1 + 136) = v7;
  *(a1 + 120) = v2;
  *(a1 + 160) = v8;
  return result;
}

__int128 **cmark_set_default_special_chars(__int128 **result, int a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = cmark_set_default_special_chars_default_special_chars;
    v4 = unk_2A13BB5B8;
    v5 = unk_2A13BB5D8;
    v2[2] = xmmword_2A13BB5C8;
    v2[3] = v5;
    *v2 = v3;
    v2[1] = v4;
    v6 = xmmword_2A13BB5E8;
    v7 = unk_2A13BB5F8;
    v8 = unk_2A13BB618;
    v2[6] = xmmword_2A13BB608;
    v2[7] = v8;
    v2[4] = v6;
    v2[5] = v7;
    v9 = xmmword_2A13BB628;
    v10 = unk_2A13BB638;
    v11 = unk_2A13BB658;
    v2[10] = xmmword_2A13BB648;
    v2[11] = v11;
    v2[8] = v9;
    v2[9] = v10;
    v12 = xmmword_2A13BB668;
    v13 = unk_2A13BB678;
    v14 = unk_2A13BB698;
    v2[14] = xmmword_2A13BB688;
    v2[15] = v14;
    v2[12] = v12;
    v2[13] = v13;
  }

  else
  {
    *result = &cmark_set_default_special_chars_default_special_chars;
  }

  return result;
}

uint64_t cmark_strbuf_init(uint64_t result, uint64_t *a2, int a3)
{
  *a2 = result;
  a2[1] = &cmark_strbuf__initbuf;
  a2[2] = 0;
  if (a3 >= 1)
  {
    return cmark_strbuf_grow(a2, a3);
  }

  return result;
}

uint64_t cmark_parser_dispose(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    cmark_node_free(v2);
  }

  result = *(a1 + 8);
  if (result)
  {

    return cmark_map_free(result);
  }

  return result;
}

uint64_t cmark_strbuf_grow(uint64_t result, int a2)
{
  if (a2 <= 0)
  {
    cmark_strbuf_grow_cold_2();
  }

  v2 = result;
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    if (a2 >> 30)
    {
      cmark_strbuf_grow_cold_1();
    }

    v4 = (a2 + (a2 >> 1) + 8) & 0x7FFFFFF8;
    if (v3)
    {
      v5 = *(result + 8);
    }

    else
    {
      v5 = 0;
    }

    result = (*(*v2 + 8))(v5, (a2 + (a2 >> 1) + 8) & 0x7FFFFFF8);
    *(v2 + 8) = result;
    *(v2 + 16) = v4;
  }

  return result;
}

void *xrealloc(void *a1, size_t a2)
{
  result = malloc_type_realloc(a1, a2, 0x67836CBBuLL);
  if (!result)
  {
    xrealloc_cold_1();
  }

  return result;
}

uint64_t cmark_find_syntax_extension(char *__s2)
{
  v2 = &syntax_extensions;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = v2[1];
    if (!strcmp(*(v3 + 40), __s2))
    {
      return v3;
    }
  }

  return 0;
}

uint64_t (***cmark_map_new(uint64_t (**a1)(uint64_t, uint64_t), uint64_t (**a2)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  result = (*a1)(1, 56);
  *result = a1;
  result[5] = 0xFFFFFFFFLL;
  result[6] = a2;
  return result;
}

uint64_t cmark_parser_attach_syntax_extension(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = cmark_llist_append(*a1, *(a1 + 136), a2);
  if (*(a2 + 16) || *(a2 + 24))
  {
    v4 = *(a1 + 144);
    if (!v4)
    {
      *(a1 + 160) = (**a1)(1, 256);
      cmark_set_default_skip_chars((a1 + 160), 1);
      *(a1 + 168) = (**a1)(1, 256);
      cmark_set_default_special_chars((a1 + 168), 1);
      v4 = *(a1 + 144);
    }

    *(a1 + 144) = cmark_llist_append(*a1, v4, a2);
  }

  return 1;
}

_DWORD *cmark_strbuf_put(_DWORD *result, const void *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = result;
    cmark_strbuf_grow(result, result[5] + a3);
    result = memmove((*(v5 + 1) + v5[5]), a2, a3);
    v6 = v5[5] + a3;
    v5[5] = v6;
    *(*(v5 + 1) + v6) = 0;
  }

  return result;
}

uint64_t S_parser_feed(uint64_t result, _BYTE *a2, unint64_t a3, int a4)
{
  v5 = a2;
  v6 = result;
  v7 = &a2[a3];
  v8 = *(result + 120);
  v9 = *(result + 128);
  v10 = 0xFFFFFFFFLL - v9;
  v11 = v9 + a3;
  if (v10 < a3)
  {
    v11 = 0xFFFFFFFFLL;
  }

  *(result + 128) = v11;
  if (*(result + 124) == 1 && *a2 == 10)
  {
    v5 = a2 + 1;
  }

  *(result + 124) = 0;
  if (v5 >= v7)
  {
    return result;
  }

  v12 = v8 & 0xC0000;
  v13 = a4 ^ 1;
  do
  {
    v14 = 0;
    while (1)
    {
      v15 = v5[v14];
      if (!v5[v14])
      {
        cmark_strbuf_put((v6 + 96), v5, v14);
        v19 = (v6 + 96);
        v20 = &S_parser_feed_repl;
        v21 = 3;
        goto LABEL_29;
      }

      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      if (&v5[++v14] >= v7)
      {
        if (a4)
        {
          v17 = 0;
          goto LABEL_18;
        }

        v19 = (v6 + 96);
        v20 = v5;
        v21 = v14;
LABEL_29:
        result = cmark_strbuf_put(v19, v20, v21);
        goto LABEL_30;
      }
    }

    v17 = 1;
LABEL_18:
    if (*(v6 + 116) < 1)
    {
      if (v12)
      {
        v22 = v17 | v13;
      }

      else
      {
        v22 = 1;
      }

      result = S_process_line(v6, v5, v14, v22);
    }

    else
    {
      cmark_strbuf_put((v6 + 96), v5, v14);
      if (v12)
      {
        v18 = v17 | v13;
      }

      else
      {
        v18 = 1;
      }

      S_process_line(v6, *(v6 + 104), *(v6 + 116), v18);
      result = cmark_strbuf_clear(v6 + 96);
    }

LABEL_30:
    v5 += v14;
    if (v5 >= v7)
    {
      continue;
    }

    if (*v5 == 13)
    {
      if (++v5 != v7)
      {
        goto LABEL_35;
      }

      *(v6 + 124) = 1;
      return result;
    }

    if (!*v5)
    {
      ++v5;
      continue;
    }

LABEL_35:
    if (v5 < v7 && *v5 == 10)
    {
      ++v5;
    }
  }

  while (v5 < v7);
  return result;
}

uint64_t cmark_parser_finish(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 116);
    if (v3)
    {
      S_process_line(a1, *(a1 + 104), v3, (*(a1 + 120) & 0xC0000) == 0);
      cmark_strbuf_clear(a1 + 96);
      v1 = *(a1 + 16);
    }

    for (i = *(a1 + 24); i != v1; v1 = *(a1 + 16))
    {
      i = finalize(a1, i);
      *(a1 + 24) = i;
    }

    finalize(a1, v1);
    v5 = *(a1 + 128);
    v6 = *(a1 + 8);
    if (v5 <= 0x186A0)
    {
      v5 = 100000;
    }

    *(v6 + 40) = v5;
    v7 = *(a1 + 120);
    v8 = cmark_iter_new(*(a1 + 16));
    cmark_manage_extensions_special_characters(a1, 1);
    v9 = cmark_iter_next(v8);
    if (v9 != 1)
    {
      for (j = v9; j != 1; j = cmark_iter_next(v8))
      {
        node = cmark_iter_get_node(v8);
        if (j == 2)
        {
          v12 = node;
          v13 = *(node + 112);
          if (v13)
          {
            v14 = *(v13 + 88);
            if (v14)
            {
              if (!v14())
              {
                continue;
              }

LABEL_16:
              cmark_parse_inlines(a1, v12, v6, v7);
              continue;
            }
          }

          if ((*(v12 + 100) & 0xFFFE) == 0x8008)
          {
            goto LABEL_16;
          }
        }
      }
    }

    cmark_manage_extensions_special_characters(a1, 0);
    cmark_iter_free(v8);
    if ((*(a1 + 121) & 0x20) != 0)
    {
      v15 = cmark_footnote_map_new(*a1);
      v16 = cmark_iter_new(*(a1 + 16));
      v17 = cmark_iter_next(v16);
      if (v17 != 1)
      {
        for (k = v17; k != 1; k = cmark_iter_next(v16))
        {
          v19 = cmark_iter_get_node(v16);
          if (k == 3 && *(v19 + 100) == 32779)
          {
            cmark_footnote_create(v15, v19);
          }
        }
      }

      cmark_iter_free(v16);
      v20 = cmark_iter_new(*(a1 + 16));
      v21 = cmark_iter_next(v20);
      if (v21 != 1)
      {
        v22 = v21;
        v23 = 0;
        do
        {
          v24 = cmark_iter_get_node(v20);
          if (v22 == 3)
          {
            v25 = v24;
            if (*(v24 + 100) == 49163)
            {
              v26 = cmark_map_lookup(v15, v24 + 144);
              if (v26)
              {
                if (!*(v26 + 10))
                {
                  *(v26 + 10) = ++v23;
                }

                v27 = *(v26 + 4);
                *(v25 + 136) = v27;
                v28 = *(v27 + 128) + 1;
                *(v27 + 128) = v28;
                *(v25 + 128) = v28;
                snprintf(__str, 0x20uLL, "%d", *(v26 + 10));
                if (*(v25 + 156))
                {
                  (*(*a1 + 16))(*(v25 + 144));
                }

                *(v25 + 144) = 0;
                *(v25 + 152) = 0;
                v44[0] = *a1;
                v44[1] = &cmark_strbuf__initbuf;
                v45 = 0;
                cmark_strbuf_puts(v44, __str);
                v29 = HIDWORD(v45);
                *(v25 + 144) = cmark_strbuf_detach(v44);
                *(v25 + 152) = v29 | 0x100000000;
              }

              else
              {
                v30 = (**a1)(1, 184);
                cmark_strbuf_init(*a1, v30, 0);
                *(v30 + 100) = -16383;
                *__str = *a1;
                v47 = &cmark_strbuf__initbuf;
                v48 = 0;
                cmark_strbuf_puts(__str, "[^");
                cmark_strbuf_put(__str, *(v25 + 144), *(v25 + 152));
                cmark_strbuf_putc(__str, 93);
                v31 = HIDWORD(v48);
                *(v30 + 144) = cmark_strbuf_detach(__str);
                *(v30 + 152) = v31 | 0x100000000;
                cmark_node_insert_after(v25, v30);
                cmark_node_free(v25);
              }
            }
          }

          v22 = cmark_iter_next(v20);
        }

        while (v22 != 1);
      }

      cmark_iter_free(v20);
      v32 = v15[2];
      if (v32)
      {
        qsort(v32, v15[3], 8uLL, sort_footnote_by_ix);
        if (v15[3])
        {
          v33 = 0;
          v34 = 1;
          do
          {
            v35 = v15[2][v33];
            if (*(v35 + 10))
            {
              cmark_node_append_child(*(a1 + 16), *(v35 + 4));
              *(v35 + 4) = 0;
            }

            else
            {
              cmark_node_unlink(*(v35 + 4));
            }

            v33 = v34;
          }

          while (v15[3] > v34++);
        }
      }

      cmark_unlink_footnotes_map(v15);
      cmark_map_free(v15);
    }

    cmark_consolidate_text_nodes(*(a1 + 16));
    cmark_strbuf_free(a1 + 64);
    cmark_strbuf_free(a1 + 96);
    for (m = *(a1 + 136); m; m = *m)
    {
      v38 = *(m[1] + 152);
      if (v38)
      {
        v39 = *(a1 + 16);
        v40 = v38();
        if (v40)
        {
          *(a1 + 16) = v40;
        }
      }
    }

    v41 = *(a1 + 16);
    *(a1 + 16) = 0;
    cmark_parser_reset(a1);
  }

  else
  {
    v41 = 0;
  }

  v42 = *MEMORY[0x29EDCA608];
  return v41;
}

uint64_t S_process_line(uint64_t a1, const void *a2, int a3, int a4)
{
  cmark_strbuf_clear(a1 + 64);
  if ((*(a1 + 121) & 2) != 0)
  {
    cmark_utf8proc_check((a1 + 64), a2, a3);
  }

  else
  {
    cmark_strbuf_put((a1 + 64), a2, a3);
  }

  v165 = 0;
  v166 = 0;
  v8 = *(a1 + 84);
  if (a4)
  {
    if (!v8 || ((v9 = *(*(a1 + 72) + v8 - 1), v9 != 10) ? (v10 = v9 == 13) : (v10 = 1), !v10))
    {
      cmark_strbuf_putc(a1 + 64, 10);
      v8 = *(a1 + 84);
    }
  }

  *(a1 + 36) = 0;
  v11 = (a1 + 36);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v12 = *(a1 + 72);
  v165 = v12;
  v166 = v8;
  v13 = *(a1 + 32);
  if (!v13 && v8 >= 3)
  {
    v14 = *v12;
    v15 = v12[2];
    if (v14 == 48111 && v15 == 191)
    {
      *v11 = 3;
    }
  }

  *(a1 + 32) = v13 + 1;
  v17 = *(a1 + 16);
  v18 = *(v17 + 56);
  if (!v18 || (*(v18 + 102) & 1) == 0)
  {
LABEL_21:
    v164 = 1;
    goto LABEL_22;
  }

  while (1)
  {
    v17 = v18;
    v122 = *(v18 + 100);
    S_find_first_nonspace(a1, &v165);
    v123 = *(v17 + 112);
    if (v123)
    {
      if (!*v123 || !(*v123)())
      {
        goto LABEL_232;
      }

      goto LABEL_173;
    }

    if (v122 <= 32773)
    {
      break;
    }

    if (v122 > 32776)
    {
      if (v122 == 32779)
      {
        if (*(a1 + 56) >= 4)
        {
          goto LABEL_224;
        }

        if (v166 < 1)
        {
          goto LABEL_232;
        }

        v127 = *v165;
        if (v127 != 10 && (v127 != 13 || v165[1] != 10))
        {
          goto LABEL_232;
        }
      }

      else if (v122 == 32777)
      {
        goto LABEL_232;
      }
    }

    else
    {
      if (v122 == 32774)
      {
        v128 = *(v17 + 144);
        if ((v128 - 8) <= 0xFFFFFFF8)
        {
          S_process_line_cold_1();
        }

        if ((v128 - 1) < 5)
        {
          goto LABEL_173;
        }
      }

      else if (v122 != 32776)
      {
        goto LABEL_173;
      }

      if (*(a1 + 60))
      {
        goto LABEL_232;
      }
    }

LABEL_173:
    v18 = *(v17 + 56);
    if (!v18 || (*(v18 + 102) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (v122 != 32770)
  {
    if (v122 == 32772)
    {
      v134 = *(v17 + 152) + *(v17 + 148);
      if (*(a1 + 56) >= v134)
      {
        v133 = a1;
        goto LABEL_225;
      }

      if (*(a1 + 60) != 1 || !*(v17 + 48))
      {
        goto LABEL_232;
      }
    }

    else
    {
      if (v122 != 32773)
      {
        goto LABEL_173;
      }

      v124 = *(a1 + 56);
      if (*(v17 + 179))
      {
        if (v124 <= 3 && (v125 = *(a1 + 44), v165[v125] == *(v17 + 178)))
        {
          v126 = _scan_at(_scan_close_code_fence, &v165, v125);
        }

        else
        {
          v126 = 0;
        }

        if (v126 >= *(v17 + 176))
        {
          S_advance_offset(a1, &v165, v126, 0);
          *(a1 + 24) = finalize(a1, v17);
          goto LABEL_270;
        }

        if (*(v17 + 177))
        {
          v135 = v165;
          v136 = *(v17 + 177) + 1;
          do
          {
            v137 = v135[*v11];
            if (v137 != 32 && v137 != 9)
            {
              break;
            }

            S_advance_offset(a1, &v165, 1, 1);
            --v136;
          }

          while (v136 > 1);
        }

        goto LABEL_173;
      }

      if (v124 >= 4)
      {
LABEL_224:
        v133 = a1;
        v134 = 4;
        goto LABEL_225;
      }

      if (*(a1 + 60) != 1)
      {
        goto LABEL_232;
      }
    }

    v134 = *(a1 + 44) - *(a1 + 36);
    v133 = a1;
    v139 = 0;
LABEL_230:
    S_advance_offset(v133, &v165, v134, v139);
    goto LABEL_173;
  }

  v129 = *(a1 + 56);
  if (v129 <= 3)
  {
    v130 = v165;
    if (v165[*(a1 + 44)] == 62)
    {
      S_advance_offset(a1, &v165, v129 + 1, 1);
      v131 = v130[*(a1 + 36)];
      if (v131 != 32 && v131 != 9)
      {
        goto LABEL_173;
      }

      v133 = a1;
      v134 = 1;
LABEL_225:
      v139 = 1;
      goto LABEL_230;
    }
  }

LABEL_232:
  v17 = *(v17 + 40);
  if (!v17)
  {
    goto LABEL_270;
  }

  v164 = 0;
LABEL_22:
  v19 = *(a1 + 24);
  v20 = v17;
  if ((*(a1 + 122) & 4) != 0)
  {
    goto LABEL_160;
  }

  v21 = 0;
  v22 = *(v19 + 100) == 32776;
  v23 = *(v17 + 100);
  v20 = v17;
  while ((v23 - 32775) <= 0xFFFFFFFD)
  {
    ++v21;
    S_find_first_nonspace(a1, &v165);
    v24 = *(a1 + 56);
    if (v24 > 3)
    {
      goto LABEL_26;
    }

    v28 = v22;
    v29 = v23;
    v30 = v165;
    v31 = *(a1 + 44);
    if (v165[v31] == 62)
    {
      v32 = v31 + 1;
      S_advance_offset(a1, &v165, v31 + 1 - *(a1 + 36), 0);
      v33 = v30[*(a1 + 36)];
      if (v33 == 32 || v33 == 9)
      {
        S_advance_offset(a1, &v165, 1, 1);
      }

      v27 = add_child(a1, v20, 32770, v32);
      goto LABEL_43;
    }

    v162 = *(a1 + 56);
    v57 = _scan_at(_scan_atx_heading_start, &v165, v31);
    v58 = *(a1 + 44);
    if (v57)
    {
      v59 = v57;
      S_advance_offset(a1, &v165, v58 + v57 - *(a1 + 36), 0);
      v20 = add_child(a1, v20, 32777, v58 + 1);
      v60 = v165;
      v61 = v166;
      v62 = memchr(&v165[*(a1 + 44)], 35, v166 - *(a1 + 44));
      LODWORD(v63) = 0;
      v64 = v62 - v60;
      if (!v62)
      {
        v64 = v61;
      }

      if (v60[v64] == 35)
      {
        v63 = 0;
        v65 = &v60[v64 + 1];
        do
        {
          v66 = *(v65 + v63++);
        }

        while (v66 == 35);
      }

      *(v20 + 144) = v63;
      *(v20 + 148) = 0;
      *(v20 + 96) = v59;
      goto LABEL_88;
    }

    v67 = _scan_at(_scan_open_code_fence, &v165, *(a1 + 44));
    v68 = *(a1 + 44);
    if (v67)
    {
      v69 = v67;
      v70 = add_child(a1, v20, 32773, v68 + 1);
      v20 = v70;
      *(v70 + 179) = 1;
      *(v70 + 178) = v165[*(a1 + 44)];
      if (v69 >= 255)
      {
        v71 = -1;
      }

      else
      {
        v71 = v69;
      }

      *(v70 + 176) = v71;
      *(v70 + 177) = *(a1 + 44) - *(a1 + 36);
      *(v70 + 144) = &unk_2985BB8EE;
      *(v70 + 152) = 0;
      S_advance_offset(a1, &v165, *(a1 + 44) + v69 - *(a1 + 36), 0);
      goto LABEL_88;
    }

    v72 = _scan_at(_scan_html_block_start, &v165, v68);
    if (v72)
    {
      v73 = v72;
LABEL_87:
      v20 = add_child(a1, v20, 32774, *(a1 + 44) + 1);
      *(v20 + 144) = v73;
      goto LABEL_88;
    }

    v88 = *(a1 + 44);
    v23 = v29;
    if (v29 == 32776)
    {
      v89 = _scan_at(_scan_setext_heading_line, &v165, v88);
      if (v89)
      {
        v90 = v89;
        if (resolve_reference_link_definitions(a1, v20))
        {
          *(v20 + 100) = -32759;
          *(v20 + 144) = v90;
          *(v20 + 148) = 1;
          goto LABEL_105;
        }

        goto LABEL_88;
      }

      v22 = v28;
      if (!v164)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v97 = _scan_at(_scan_html_block_start_7, &v165, v88);
      v22 = v28;
      if (v97)
      {
        v73 = v97;
        goto LABEL_87;
      }
    }

    v98 = *(a1 + 44);
    if (*(a1 + 52) > v98)
    {
      goto LABEL_152;
    }

    v99 = *(a1 + 44);
    v100 = v165[v98];
    if ((v100 - 42) > 0x35 || ((1 << (v100 - 42)) & 0x20000000000009) == 0)
    {
      goto LABEL_151;
    }

    v101 = v98 + 1;
    v102 = v165[v101];
    if (!v165[v101])
    {
      ++v98;
LABEL_151:
      *(a1 + 52) = v98;
LABEL_152:
      v24 = v162;
      if ((*(a1 + 121) & 0x20) != 0 && v21 <= 0x63)
      {
        v109 = _scan_at(_scan_footnote_definition, &v165, *(a1 + 44));
        v24 = v162;
        if (v109)
        {
          v110 = v109;
          v111 = v109 - 2;
          v112 = &v165[*(a1 + 44)];
          v113 = v111;
          v155 = v21;
          if (v112[v111 + 1] != 93)
          {
            do
            {
              v114 = v113 - 1;
              v113 = (v113 - 1);
            }

            while (v112[v114 + 1] != 93);
          }

          v115 = v113 + 0xFFFFFFFFLL;
          v116 = (**a1)(v113, 1);
          v117 = v116;
          if (v115 >= 1)
          {
            memcpy(v116, v112 + 2, v115 & 0x7FFFFFFF);
          }

          v117[v115] = 0;
          S_advance_offset(a1, &v165, *(a1 + 44) + v110 - *(a1 + 36), 0);
          v20 = add_child(a1, v20, 32779, v110 + *(a1 + 44) + 1);
          *(v20 + 144) = v117;
          *(v20 + 152) = v115 | 0x100000000;
          *(v20 + 96) = v110;
          v21 = v155;
          goto LABEL_88;
        }
      }

LABEL_26:
      v163 = v23;
      if ((v23 == 32771 || v24 <= 3) && *(a1 + 56) <= 3 && v21 <= 0x63)
      {
        v160 = v24;
        v156 = *a1;
        v35 = *(a1 + 44);
        v36 = v165[v35];
        v158 = *(v20 + 100);
        v37 = v165[v35];
        v38 = v36 > 0x2D;
        v39 = (1 << v36) & 0x2C0000000000;
        if (v38 || v39 == 0)
        {
          v153 = *(a1 + 44);
          v75 = cmark_isdigit(v37);
          v24 = v160;
          if (v75)
          {
            v76 = 0;
            v77 = v153;
            v78 = -8;
            while (1)
            {
              v76 = v165[v77] + 10 * v76 - 48;
              if (!v78)
              {
                break;
              }

              v79 = v20;
              v80 = v21;
              v81 = v19;
              v82 = v11;
              v83 = v22;
              v84 = v77 + 1;
              v85 = cmark_isdigit(v165[v77 + 1]);
              ++v78;
              v77 = v84;
              v22 = v83;
              v11 = v82;
              v19 = v81;
              v21 = v80;
              v20 = v79;
              if (!v85)
              {
                v86 = v153 + v78 + 7;
                v87 = v153 + v78 + 8;
                goto LABEL_107;
              }
            }

            v86 = v153 + 8;
            v87 = v153 + 9;
LABEL_107:
            v24 = v160;
            if (v158 != 32776 || v76 == 1)
            {
              v91 = v165[v87];
              if (v91 == 46 || v91 == 41)
              {
                v152 = v86 + 2;
                v92 = cmark_isspace(v165[v152]);
                v24 = v160;
                if (v92)
                {
                  if (v158 != 32776)
                  {
                    goto LABEL_144;
                  }

                  v93 = &v165[v152];
                  do
                  {
                    while (1)
                    {
                      v95 = *v93++;
                      v94 = v95;
                      if (v95 > 12)
                      {
                        break;
                      }

                      if (v94 != 9)
                      {
                        if (v94 != 10)
                        {
                          goto LABEL_144;
                        }

                        goto LABEL_28;
                      }
                    }
                  }

                  while (v94 == 32);
                  if (v94 != 13)
                  {
LABEL_144:
                    v107 = (*v156)(1, 24);
                    v24 = v160;
                    *v107 = 2;
                    *(v107 + 20) = 0;
                    *(v107 + 12) = v76;
                    if (v91 == 46)
                    {
                      v108 = 1;
                    }

                    else
                    {
                      v108 = 2;
                    }

                    *(v107 + 16) = v108;
                    if (v152 != v153)
                    {
                      v47 = v107;
                      v154 = v21;
                      v157 = (v107 + 16);
                      v161 = v19;
                      v46 = v152 - v153;
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v41 = v35 + 1;
          v42 = cmark_isspace(v165[v35 + 1]);
          v24 = v160;
          if (v42)
          {
            if (v158 != 32776)
            {
              goto LABEL_56;
            }

            v43 = &v165[v41];
            do
            {
              do
              {
                v45 = *v43++;
                v44 = v45;
              }

              while (v45 == 9);
            }

            while (v44 == 32);
            if (v44 != 10)
            {
LABEL_56:
              v154 = v21;
              v161 = v19;
              v46 = 1;
              v47 = (*v156)(1, 24);
              *v47 = 1;
              *(v47 + 20) = v37;
              *(v47 + 16) = 0;
              v157 = (v47 + 16);
              *(v47 + 12) = 0;
              *(v47 + 21) = 0;
LABEL_57:
              v48 = v46;
              S_advance_offset(a1, &v165, *(a1 + 44) + v46 - *(a1 + 36), 0);
              v49 = 0;
              v159 = *(a1 + 61);
              v50 = *(a1 + 36);
              v51 = *(a1 + 40);
              v52 = v165;
              while (1)
              {
                v53 = v52[*v11];
                if (v53 != 32 && v53 != 9)
                {
                  break;
                }

                S_advance_offset(a1, &v165, 1, 1);
                v49 = *(a1 + 40) - v51;
                if (v49 >= 6)
                {
                  goto LABEL_64;
                }
              }

              if ((v49 - 5) >= 0xFFFFFFFC)
              {
                if (v53 != 13 && v53 != 10)
                {
                  *(v47 + 8) = v49 + v48;
                  v19 = v161;
                  v21 = v154;
                  goto LABEL_66;
                }

LABEL_64:
                *(v47 + 8) = v48 + 1;
                *(a1 + 36) = v50;
                *(a1 + 40) = v51;
                *(a1 + 61) = v159;
                v19 = v161;
                v21 = v154;
              }

              else
              {
                *(v47 + 8) = v48 + 1;
                *(a1 + 36) = v50;
                *(a1 + 40) = v51;
                *(a1 + 61) = v159;
                v19 = v161;
                v21 = v154;
                if (v49 < 1)
                {
LABEL_66:
                  *(v47 + 4) = *(a1 + 56);
                  if (v163 != 32771 || *(v20 + 144) != *v47 || *(v20 + 160) != *v157 || *(v20 + 164) != *(v47 + 20))
                  {
                    v20 = add_child(a1, v20, 32771, *(a1 + 44) + 1);
                    v55 = *(v47 + 16);
                    *(v20 + 144) = *v47;
                    *(v20 + 160) = v55;
                  }

                  v20 = add_child(a1, v20, 32772, *(a1 + 44) + 1);
                  v56 = *v47;
                  *(v20 + 160) = *(v47 + 16);
                  *(v20 + 144) = v56;
                  (*(*a1 + 16))(v47);
                  goto LABEL_88;
                }
              }

              S_advance_offset(a1, &v165, 1, 1);
              goto LABEL_66;
            }
          }
        }
      }

LABEL_28:
      if (v24 >= 4 && !v22 && (*(a1 + 60) & 1) == 0)
      {
        S_advance_offset(a1, &v165, 4, 1);
        v20 = add_child(a1, v20, 32773, *(a1 + 36) + 1);
        *(v20 + 176) = 0;
        *(v20 + 144) = &unk_2985BB8EE;
        *(v20 + 152) = 0;
        goto LABEL_88;
      }

      v25 = *(a1 + 136);
      if (!v25)
      {
        break;
      }

      while (1)
      {
        v26 = *(v25[1] + 8);
        if (v26)
        {
          v27 = v26();
          if (v27)
          {
            break;
          }
        }

        v25 = *v25;
        if (!v25)
        {
          goto LABEL_160;
        }
      }

LABEL_43:
      v20 = v27;
      goto LABEL_88;
    }

    v103 = &v165[v101 + 1];
    v104 = 1;
    v105 = v98 + 1;
    while (v102 == v100)
    {
      ++v104;
LABEL_137:
      ++v105;
      v106 = *v103++;
      v102 = v106;
      if (!v106)
      {
        goto LABEL_138;
      }
    }

    if (v102 == 32 || v102 == 9)
    {
      goto LABEL_137;
    }

LABEL_138:
    if (v104 < 3 || v102 != 13 && v102 != 10)
    {
      v98 = v105;
      goto LABEL_151;
    }

    if (v105 - v98 == -1)
    {
      goto LABEL_152;
    }

    v20 = add_child(a1, v20, 32778, v101);
LABEL_105:
    S_advance_offset(a1, &v165, v166 + ~*(a1 + 36), 0);
LABEL_88:
    v22 = 0;
    v23 = *(v20 + 100);
    if ((v23 - 32773) > 4 || ((1 << (v23 - 5)) & 0x19) == 0)
    {
      continue;
    }

    break;
  }

LABEL_160:
  if (v19 == *(a1 + 24))
  {
    S_find_first_nonspace(a1, &v165);
    v118 = *(a1 + 60);
    if ((v118 & 1) == 0)
    {
      v121 = (v20 + 100);
      goto LABEL_235;
    }

    v119 = *(v20 + 56);
    if (v119)
    {
      *(v119 + 102) |= 2u;
    }

    v121 = (v20 + 100);
    v120 = *(v20 + 100);
    if (v120 > 0x8008)
    {
      if (v120 - 32777 >= 2)
      {
        goto LABEL_264;
      }

      goto LABEL_235;
    }

    if (v120 == 32770)
    {
      goto LABEL_235;
    }

    if (v120 == 32772)
    {
      if (*(v20 + 48))
      {
        goto LABEL_264;
      }

      v141 = *(v20 + 102) & 0xFFFD;
      if (*(v20 + 80) == *(a1 + 32))
      {
        v140 = 0;
      }

      else
      {
LABEL_265:
        v140 = 2;
      }
    }

    else
    {
      if (v120 != 32773 || !*(v20 + 179))
      {
LABEL_264:
        v141 = *(v20 + 102) & 0xFFFD;
        goto LABEL_265;
      }

LABEL_235:
      v140 = 0;
      v141 = *(v20 + 102) & 0xFFFD;
    }

    *(v20 + 102) = v140 | v141;
    for (i = *(v20 + 40); i; i = *(i + 40))
    {
      *(i + 102) &= ~2u;
    }

    v143 = *(a1 + 24);
    if (v20 == v17 && v143 != v17 && (!v118 || (*(a1 + 122) & 0xC) != 0) && *(v143 + 100) == 32776)
    {
      add_line(*(a1 + 24), &v165, a1);
      goto LABEL_270;
    }

    while (v143 != v17)
    {
      v143 = finalize(a1, v143);
      *(a1 + 24) = v143;
      if (!v143)
      {
        S_process_line_cold_2();
      }
    }

    v144 = *v121;
    if (v144 == 32773)
    {
      goto LABEL_268;
    }

    if (v144 == 32774)
    {
      add_line(v20, &v165, a1);
      v145 = *(v20 + 144) - 1;
      if (v145 <= 4 && _scan_at(*(&off_2A1EFDA00 + v145), &v165, *(a1 + 44)))
      {
        v146 = finalize(a1, v20);
        if (!*(a1 + 24))
        {
          S_process_line_cold_3();
        }

        v20 = v146;
      }

      goto LABEL_269;
    }

    if (*(a1 + 60) != 1 || (*(a1 + 122) & 0xC) != 0)
    {
      if ((v144 & 0xFFFE) == 0x8008)
      {
        if (v144 == 32777 && (*(v20 + 148) & 1) == 0)
        {
          chop_trailing_hashtags(&v165);
        }

        if ((*(a1 + 122) & 0xC) == 0)
        {
LABEL_267:
          S_advance_offset(a1, &v165, *(a1 + 44) - *(a1 + 36), 0);
        }
      }

      else
      {
        if ((*(a1 + 122) & 0xC) == 0)
        {
          v20 = add_child(a1, v20, 32776, *(a1 + 44) + 1);
          goto LABEL_267;
        }

        v20 = add_child(a1, v20, 32776, *(a1 + 36) + 1);
      }

LABEL_268:
      add_line(v20, &v165, a1);
    }

LABEL_269:
    *(a1 + 24) = v20;
  }

LABEL_270:
  v147 = v166;
  *(a1 + 88) = v166;
  if (v147)
  {
    v148 = v165;
    v149 = v147 - 1;
    if (v165[v149] != 10 || (*(a1 + 88) = v149, --v147, v149))
    {
      v150 = v147 - 1;
      if (v148[v150] == 13)
      {
        *(a1 + 88) = v150;
      }
    }
  }

  return cmark_strbuf_clear(a1 + 64);
}

uint64_t cmark_strbuf_clear(uint64_t result)
{
  *(result + 20) = 0;
  if (*(result + 16) >= 1)
  {
    **(result + 8) = 0;
  }

  return result;
}

uint64_t S_find_first_nonspace(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 44);
  v3 = *(result + 36);
  if (v2 <= v3)
  {
    v5 = *(result + 40);
    if (v5 <= 0)
    {
      v10 = -(-v5 & 3);
    }

    else
    {
      v10 = *(result + 40) & 3;
    }

    v11 = 4 - v10;
    *(result + 44) = v3;
    *(result + 48) = v5;
    v6 = *a2;
    v4 = v5;
    while (1)
    {
      while (1)
      {
        v2 = v3;
        v12 = *(v6 + v3);
        if (v12 != 9)
        {
          break;
        }

        v3 = v2 + 1;
        v4 += v11;
        *(result + 44) = v2 + 1;
        *(result + 48) = v4;
        v11 = 4;
      }

      if (v12 != 32)
      {
        break;
      }

      v3 = v2 + 1;
      ++v4;
      *(result + 44) = v2 + 1;
      *(result + 48) = v4;
      if (!--v11)
      {
        v11 = 4;
      }
    }
  }

  else
  {
    v4 = *(result + 48);
    v5 = *(result + 40);
    v6 = *a2;
  }

  *(result + 56) = v4 - v5;
  v7 = *(v6 + v2);
  v9 = v7 == 10 || v7 == 13;
  *(result + 60) = v9;
  return result;
}

uint64_t add_child(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    add_child_cold_1();
  }

    ;
  }

  v8 = *a1;
  v9 = *(a1 + 32);
  v10 = (**a1)(1, 184);
  cmark_strbuf_init(v8, v10, 32);
  *(v10 + 100) = a3;
  *(v10 + 102) = 1;
  *(v10 + 80) = v9;
  *(v10 + 84) = a4;
  *(v10 + 88) = v9;
  *(v10 + 40) = i;
  v11 = *(i + 56);
  v12 = (i + 48);
  if (v11)
  {
    v12 = (v11 + 24);
  }

  *v12 = v10;
  *(v10 + 32) = v11;
  *(i + 56) = v10;
  return v10;
}

BOOL cmark_node_can_contain_type(uint64_t a1, int a2)
{
  if (a2 == 32769)
  {
    return 0;
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    v6 = *(v5 + 80);
    if (v6)
    {
      return v6(v5, a1) != 0;
    }
  }

  v7 = *(a1 + 100);
  if (v7 <= 0x8007)
  {
    if (*(a1 + 100) > 0x8003u)
    {
      if (v7 != 32772)
      {
        return v7 == 32775;
      }
    }

    else if (v7 - 32769 >= 2)
    {
      if (v7 == 32771)
      {
        return a2 == 32772;
      }

      return 0;
    }

    return a2 != 32772 && (a2 & 0xC000) == 0x8000;
  }

  if ((v7 - 49158 > 6 || v7 == 49163) && v7 - 32776 >= 2)
  {
    if (v7 != 32779)
    {
      return 0;
    }

    return a2 != 32772 && (a2 & 0xC000) == 0x8000;
  }

  return (~a2 & 0xC000) == 0;
}

_DWORD *add_line(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 102) & 1) == 0)
  {
    add_line_cold_1();
  }

  if (*(a3 + 61) == 1)
  {
    v6 = *(a3 + 40);
    ++*(a3 + 36);
    v7 = -v6 < 0;
    v8 = -v6 & 3;
    v9 = v6 & 3;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v8;
    }

    v11 = v10 - 4;
    do
    {
      cmark_strbuf_putc(a1, 32);
    }

    while (!__CFADD__(v11++, 1));
  }

  v13 = *(a3 + 36);
  v14 = *(a2 + 8) - v13;
  v15 = (*a2 + v13);

  return cmark_strbuf_put(a1, v15, v14);
}

uint64_t resolve_reference_link_definitions(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v12 = v3;
  v4 = *(a2 + 20);
  *(&v12 + 1) = v4;
  if (v4)
  {
    do
    {
      if (*v3 == 91)
      {
        v6 = cmark_parse_reference_inline(*a1, &v12, *(a1 + 8));
        if (v6)
        {
          goto LABEL_8;
        }

        v4 = DWORD2(v12);
        if (!DWORD2(v12))
        {
          break;
        }
      }

      if (*v12 != 94 || *(v12 + 1) != 91)
      {
        break;
      }

      v6 = cmark_parse_reference_attributes_inline(*a1, &v12, *(a1 + 8));
      if (!v6)
      {
        v4 = DWORD2(v12);
        break;
      }

LABEL_8:
      v3 = (v12 + v6);
      *&v12 = v3;
      v4 = DWORD2(v12) - v6;
      DWORD2(v12) -= v6;
    }

    while (DWORD2(v12));
  }

  cmark_strbuf_drop(a2, *(a2 + 20) - v4);
  v7 = *(a2 + 20);
  if (v7 < 1)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 <= 12)
    {
      break;
    }

    if (v9 != 32)
    {
      result = 0;
      if (v9 == 13)
      {
        return result;
      }

      return 1;
    }

LABEL_17:
    if (!--v7)
    {
      return 0;
    }
  }

  if (v9 == 9)
  {
    goto LABEL_17;
  }

  result = 0;
  if (v9 == 10)
  {
    return result;
  }

  return 1;
}

uint64_t finalize(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 102);
  if ((v2 & 1) == 0)
  {
    finalize_cold_2();
  }

  v5 = *(a2 + 40);
  *(a2 + 102) = v2 & 0xFFFE;
  v6 = *(a1 + 84);
  if (!v6)
  {
    v8 = *(a1 + 88);
    *(a2 + 88) = *(a1 + 32);
    *(a2 + 92) = v8;
    v7 = *(a2 + 100);
    goto LABEL_16;
  }

  v7 = *(a2 + 100);
  if (v7 == 32769)
  {
    goto LABEL_12;
  }

  if (v7 == 32777)
  {
    if (*(a2 + 148))
    {
      goto LABEL_12;
    }
  }

  else if (v7 == 32773 && *(a2 + 179))
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 32);
  if (v9 > *(a2 + 88))
  {
    v10 = v9 - 1;
    v11 = *(a1 + 88);
    *(a2 + 88) = v10;
    *(a2 + 92) = v11;
    goto LABEL_16;
  }

LABEL_12:
  *(a2 + 88) = *(a1 + 32);
  *(a2 + 92) = v6;
  v12 = *(a1 + 72);
  v13 = v6 - 1;
  if (*(v12 + v13) != 10 || (*(a2 + 92) = v13, --v6, v13))
  {
    v14 = v6 - 1;
    if (*(v12 + v14) == 13)
    {
      *(a2 + 92) = v14;
    }
  }

LABEL_16:
  if (v7 > 32773)
  {
    if (v7 == 32774)
    {
      v26 = *(a2 + 20);
      *(a2 + 144) = cmark_strbuf_detach(a2);
      *(a2 + 152) = v26 | 0x100000000;
    }

    else if (v7 == 32776 && (resolve_reference_link_definitions(a1, a2) & 1) == 0 && (*(a1 + 122) & 0xC) == 0)
    {
      cmark_node_free(a2);
    }
  }

  else if (v7 == 32771)
  {
    *(a2 + 165) = 1;
    v20 = *(a2 + 48);
    if (v20)
    {
      while ((*(v20 + 102) & 2) == 0 || !*(v20 + 24))
      {
        v21 = *(v20 + 48);
        if (!v21)
        {
          goto LABEL_83;
        }

        v22 = *(v20 + 24);
        do
        {
          if (!v22 && !*(v21 + 24))
          {
            break;
          }

          v24 = (v21 + 102);
          v23 = *(v21 + 102);
          if ((v23 & 4) == 0)
          {
            v25 = v21;
            while (*(v25 + 100) - 32771 <= 1)
            {
              v25 = *(v25 + 56);
              if (!v25)
              {
                break;
              }

              *v24 = v23 | 4;
              v24 = (v25 + 102);
              v23 = *(v25 + 102);
              if ((v23 & 4) != 0)
              {
                goto LABEL_47;
              }
            }

            *v24 = v23 | 4;
          }

LABEL_47:
          if ((v23 & 2) != 0)
          {
            goto LABEL_59;
          }

          v21 = *(v21 + 24);
        }

        while (v21);
        if (*(a2 + 165))
        {
LABEL_83:
          v20 = *(v20 + 24);
          if (v20)
          {
            continue;
          }
        }

        return v5;
      }

LABEL_59:
      *(a2 + 165) = 0;
    }
  }

  else if (v7 == 32773)
  {
    v15 = *(a2 + 20);
    if (*(a2 + 179))
    {
      if (v15 < 1)
      {
LABEL_27:
        finalize_cold_1();
      }

      v16 = 0;
      v17 = *(a2 + 8);
      while (1)
      {
        v18 = v17[v16];
        if (v18 == 10 || v18 == 13)
        {
          break;
        }

        if (v15 == ++v16)
        {
          goto LABEL_27;
        }
      }

      v45[0] = *a1;
      v45[1] = &cmark_strbuf__initbuf;
      v46 = 0;
      houdini_unescape_html_f(v45, v17, v16);
      cmark_strbuf_trim(v45);
      cmark_strbuf_unescape(v45);
      v27 = HIDWORD(v46);
      *(a2 + 144) = cmark_strbuf_detach(v45);
      *(a2 + 152) = v27 | 0x100000000;
      v28 = (*(a2 + 8) + v16);
      v29 = *v28;
      v30 = v29 == 13;
      if (v29 == 13)
      {
        ++v28;
      }

      if (*v28 == 10)
      {
        v31 = v30 + 1;
      }

      else
      {
        v31 = v30;
      }

      cmark_strbuf_drop(a2, v31 + v16);
    }

    else
    {
      if (v15 < 1)
      {
LABEL_67:
        cmark_strbuf_clear(a2);
      }

      else
      {
        v32 = *(a2 + 8);
        v33 = *(a2 + 20);
        while (1)
        {
          v34 = v33 - 1;
          v35 = *(v32 - 1 + v33);
          v36 = v35 > 0x20;
          v37 = (1 << v35) & 0x100002600;
          if (v36 || v37 == 0)
          {
            break;
          }

          --v33;
          if ((v34 + 1) <= 1)
          {
            goto LABEL_67;
          }
        }

        if (v15 >= v33)
        {
          v41 = (v32 + v34);
          while (1)
          {
            v43 = *v41++;
            v42 = v43;
            if (v43 == 13 || v42 == 10)
            {
              break;
            }

            LODWORD(v34) = v34 + 1;
            if (v15 <= v34)
            {
              goto LABEL_68;
            }
          }

          cmark_strbuf_truncate(a2, v34);
        }
      }

LABEL_68:
      cmark_strbuf_putc(a2, 10);
    }

    v39 = *(a2 + 20);
    *(a2 + 160) = cmark_strbuf_detach(a2);
    *(a2 + 168) = v39 | 0x100000000;
  }

  return v5;
}

uint64_t cmark_iter_new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    result = (**result)(1, 48);
    *result = v2;
    *(result + 8) = v1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 2;
    *(result + 40) = v1;
  }

  return result;
}

void *cmark_strbuf_drop(void *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = *(result + 5);
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = *(result + 5);
    }

    v5 = v3 - v4;
    *(result + 5) = v3 - v4;
    if (v3 > a2)
    {
      result = memmove(*(result + 1), (*(result + 1) + v4), v5);
      v5 = v2[5];
    }

    *(*(v2 + 1) + v5) = 0;
  }

  return result;
}

uint64_t cmark_manage_extensions_special_characters(uint64_t result, int a2)
{
  v2 = *(result + 144);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = v2[1];
      for (i = *(v5 + 32); i; i = *i)
      {
        v7 = *(v5 + 56);
        v8 = *(i + 8);
        if (a2)
        {
          result = cmark_inlines_add_special_character(v4, v8, v7);
        }

        else
        {
          result = cmark_inlines_remove_special_character(v4, v8, v7);
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t cmark_inlines_add_special_character(uint64_t result, unsigned int a2, int a3)
{
  *(*(result + 168) + a2) = 1;
  if (a3)
  {
    *(*(result + 160) + a2) = 1;
  }

  return result;
}

uint64_t cmark_iter_next(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  if (result != 1)
  {
    if (result != 2 || (v4 = *(v3 + 100), (v4 - 49153) < 5) || ((v5 = v4 - 32773, v6 = v5 > 5, v7 = (1 << v5) & 0x23, !v6) ? (v8 = v7 == 0) : (v8 = 1), !v8))
    {
      if (v3 == *(a1 + 8))
      {
        *(a1 + 32) = 1;
        *(a1 + 40) = 0;
        return result;
      }

      v9 = *(v3 + 24);
      if (v9)
      {
        *(a1 + 32) = 2;
        *(a1 + 40) = v9;
        return result;
      }

      v10 = *(v3 + 40);
      if (!v10)
      {
        cmark_iter_next_cold_1();
      }

      v11 = 3;
      goto LABEL_14;
    }

    v10 = *(v3 + 48);
    if (v10)
    {
      v11 = 2;
LABEL_14:
      *(a1 + 32) = v11;
      *(a1 + 40) = v10;
      return result;
    }

    *(a1 + 32) = 3;
  }

  return result;
}

uint64_t match(uint64_t a1, uint64_t (***a2)(uint64_t, uint64_t), uint64_t a3, int a4, _DWORD *a5)
{
  if (cmark_inline_parser_in_bracket(a5, 0) || cmark_inline_parser_in_bracket(a5, 1))
  {
    return 0;
  }

  if (a4 != 119)
  {
    if (a4 != 58)
    {
      return 0;
    }

    chunk = cmark_inline_parser_get_chunk(a5);
    offset = cmark_inline_parser_get_offset(a5);
    v13 = *(chunk + 8) - offset;
    if (v13 < 4)
    {
      return 0;
    }

    v14 = offset;
    v15 = *chunk + offset;
    if (*(v15 + 1) != 47 || *(v15 + 2) != 47)
    {
      return 0;
    }

    v52 = chunk;
    v53 = offset;
    v51 = offset;
    if (offset < 1)
    {
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v17 = offset + *chunk - 1;
      while (cmark_isalpha(*(v17 + v16)))
      {
        --v16;
        if (!(v14 + v16))
        {
          v18 = v14;
          goto LABEL_36;
        }
      }

      v18 = -v16;
    }

LABEL_36:
    v35 = 0;
    v54 = v13;
    v55 = v15;
    v36 = (v15 - v18);
    v50 = v18;
    v37 = v13 + v18;
    while (1)
    {
      v38 = strlen(sd_autolink_issafe_valid_uris[v35]);
      v39 = v37 - v38;
      if (v37 > v38)
      {
        v40 = v38;
        if (!strncasecmp(v36, sd_autolink_issafe_valid_uris[v35], v38) && is_valid_hostchar(&v36[v40], v39))
        {
          break;
        }
      }

      v9 = 0;
      if (++v35 == 3)
      {
        return v9;
      }
    }

    v41 = check_domain(v55 + 3, v54 - 3, 1);
    if (!v41)
    {
      return 0;
    }

    v42 = v41 + 3;
    if (v41 + 3 >= v54)
    {
      v43 = v53;
    }

    else
    {
      v43 = v53;
      do
      {
        if (cmark_isspace(*(v55 + v42)))
        {
          break;
        }

        if (*(v55 + v42) == 60)
        {
          break;
        }

        ++v42;
      }

      while (v42 < v54);
    }

    v44 = autolink_delim(v55, v42);
    if (!v44)
    {
      return 0;
    }

    v45 = v44;
    cmark_inline_parser_set_offset(a5, v43 + v44);
    cmark_node_unput(a3, v50);
    v9 = cmark_node_new_with_mem(0xC009u, *a2);
    v46 = v51 - v50;
    v47 = (v50 + v45);
    v48 = *v52 + v46;
    *(v9 + 144) = v48;
    *(v9 + 152) = v47;
    v32 = cmark_node_new_with_mem(0xC001u, *a2);
    *(v32 + 144) = v48;
    *(v32 + 152) = v47;
    cmark_node_append_child(v9, v32);
    line = cmark_inline_parser_get_line(a5);
    *(v32 + 88) = line;
    *(v9 + 88) = line;
    *(v32 + 80) = line;
    *(v32 + 84) = v46;
    *(v9 + 80) = line;
    *(v9 + 84) = v46;
    goto LABEL_33;
  }

  v19 = cmark_inline_parser_get_chunk(a5);
  v20 = cmark_inline_parser_get_offset(a5);
  v21 = (*v19 + v20);
  v22 = *(v19 + 8) - v20;
  column = cmark_inline_parser_get_column(a5);
  if (v20)
  {
    v24 = *(v21 - 1);
    if (!memchr("*_~(", v24, 5uLL))
    {
      if (!cmark_isspace(v24) || v22 < 4)
      {
        return 0;
      }

      goto LABEL_24;
    }
  }

  if (v22 >= 4)
  {
LABEL_24:
    if (*v21 != 779581303)
    {
      return 0;
    }

    v26 = check_domain(v21, v22, 0);
    if (!v26)
    {
      return 0;
    }

      ;
    }

    v28 = autolink_delim(v21, i);
    if (!v28)
    {
      return 0;
    }

    v29 = v28;
    v30 = v20;
    cmark_inline_parser_set_offset(a5, v20 + v28);
    v9 = cmark_node_new_with_mem(0xC009u, *a2);
    v56[0] = 0;
    v56[1] = 0;
    v57 = 0;
    cmark_strbuf_init(*a2, v56, 10);
    cmark_strbuf_puts(v56, "http://");
    cmark_strbuf_put(v56, v21, v29);
    v31 = HIDWORD(v57);
    *(v9 + 144) = cmark_strbuf_detach(v56);
    *(v9 + 152) = v31 | 0x100000000;
    v32 = cmark_node_new_with_mem(0xC001u, *a2);
    *(v32 + 144) = *v19 + v30;
    *(v32 + 152) = v29;
    cmark_node_append_child(v9, v32);
    v33 = cmark_inline_parser_get_line(a5);
    *(v32 + 88) = v33;
    *(v9 + 88) = v33;
    *(v32 + 80) = v33;
    *(v32 + 84) = column - 1;
    *(v9 + 80) = v33;
    *(v9 + 84) = column - 1;
LABEL_33:
    v34 = cmark_inline_parser_get_column(a5);
    *(v32 + 92) = v34 - 1;
    *(v9 + 92) = v34 - 1;
    return v9;
  }

  return 0;
}

_DWORD *match_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a4 == 126)
  {
    v12 = 0;
    v13 = 0;
    v7 = cmark_inline_parser_scan_delimiters(a5, 100, 126, &v13 + 1, &v13, &v12 + 1, &v12);
    __memset_chk();
    __s[v7] = 0;
    v8 = cmark_node_new_with_mem(0xC001u, *a2);
    cmark_node_set_literal(v8, __s);
    line = cmark_inline_parser_get_line(a5);
    v8[22] = line;
    v8[20] = line;
    v8[21] = cmark_inline_parser_get_column(a5) - v7;
    if (v13 && (v7 == 2 || v7 == 1 && (*(a2 + 120) & 0x4000) == 0))
    {
      cmark_inline_parser_push_delimiter(a5, 126, SHIDWORD(v13), v13, v8);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t cmark_parse_inlines(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v5 = a2;
  v316 = 0u;
  memset(v317, 0, sizeof(v317));
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v310 = 0u;
  v311 = 0u;
  v309 = 0u;
  v308 = 0u;
  v307 = 0u;
  v306 = 0u;
  v305 = 0u;
  v304 = 0u;
  v303 = 0u;
  v302 = 0u;
  v301 = 0u;
  v300 = 0u;
  v299 = 0u;
  v298 = 0u;
  v297 = 0u;
  v296 = 0u;
  v7 = *(a2 + 8);
  v8 = *(a2 + 20);
  v9 = *(a2 + 80);
  v10 = *(a2 + 84) + *(a2 + 96) - 1;
  v288 = *a1;
  v289 = v7;
  v290 = v8;
  v291 = 0;
  v292 = 0;
  v293 = v9;
  v294 = 0;
  v295 = v10;
  *(&v296 + 1) = a3;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v316 = 0u;
  memset(v317, 0, 21);
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v302 = 0u;
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  BYTE5(v317[2]) = 1;
  v284 = a4 & 0xC0000;
  if ((a4 & 0xC0000) != 0 || v8 < 1)
  {
    if (v8 < 1)
    {
      goto LABEL_460;
    }
  }

  else
  {
    v11 = (v8 + v7 - 1);
    while (1)
    {
      v12 = *v11--;
      if (!cmark_isspace(v12))
      {
        break;
      }

      v13 = __OFSUB__(v8, 1);
      LODWORD(v8) = v8 - 1;
      v290 = v8;
      if ((v8 < 0) ^ v13 | (v8 == 0))
      {
        goto LABEL_460;
      }
    }
  }

  v14 = 0;
  v15 = (v5 + 48);
  v16 = v8;
  v285 = v4;
  v286 = v5;
  v287 = (v5 + 48);
  do
  {
    autolink = 0;
    v18 = v289;
    v19 = v14;
    v20 = (v289 + v14);
    v21 = *v20;
    if (v21 > 0x2D)
    {
      if (*v20 <= 0x5Cu)
      {
        if (*v20 <= 0x5Au)
        {
          if (v21 != 46)
          {
            if (v21 != 60)
            {
              goto LABEL_253;
            }

            v294 = v14 + 1;
            v25 = _scan_at(_scan_autolink_uri, &v289, v14 + 1);
            v26 = v294;
            v27 = (v25 - 1);
            if (v25 >= 1)
            {
              v294 += v25;
              v28 = v26 - 1;
              v29 = (v289 + v26);
              v30 = v26 + v25 - 1;
              v31 = 0;
LABEL_170:
              autolink = make_autolink(&v288, v28, v30, v29, v27, v31);
              goto LABEL_253;
            }

            v114 = _scan_at(_scan_autolink_email, &v289, v294);
            v115 = v294;
            v27 = (v114 - 1);
            if (v114 >= 1)
            {
              v294 += v114;
              v28 = v115 - 1;
              v29 = (v289 + v115);
              v30 = v115 + v114 - 1;
              v31 = 1;
              goto LABEL_170;
            }

            if (v294 + 2 > v290)
            {
              goto LABEL_287;
            }

            v186 = (v289 + v294);
            v187 = *v186;
            if (v187 == 63)
            {
              if ((v292 & 4) != 0)
              {
                goto LABEL_287;
              }

              v190 = _scan_at(_scan_html_pi, &v289, v294 + 1) + 3;
              if (v294 + v190 > v290)
              {
                v244 = 4;
LABEL_395:
                v292 |= v244;
                goto LABEL_287;
              }
            }

            else
            {
              if (v187 == 33 && (v292 & 8) == 0)
              {
                v188 = v186[1];
                if (v188 == 91)
                {
                  if (v292)
                  {
                    goto LABEL_287;
                  }

                  v280 = _scan_at(_scan_html_cdata, &v289, v294 + 2);
                  if (v280 < 1)
                  {
                    goto LABEL_287;
                  }

                  v190 = v280 + 5;
                  if (v294 + v280 + 5 <= v290)
                  {
                    goto LABEL_388;
                  }

                  v244 = 1;
                }

                else if (v188 == 45 && *(v289 + v294 + 2) == 45)
                {
                  v189 = v186[3];
                  if (v189 == 62)
                  {
                    v190 = 4;
                    goto LABEL_388;
                  }

                  if (v189 == 45 && v186[4] == 62)
                  {
                    v190 = 5;
LABEL_388:
                    v229 = v294;
                    v230 = v289 + v294 - 1;
                    v294 += v190;
                    v231 = v294;
                    autolink = (*v288)(1, 184, v115);
                    cmark_strbuf_init(v288, autolink, 0);
                    *(autolink + 100) = -16379;
                    *(autolink + 144) = v230;
                    *(autolink + 152) = (v190 + 1);
                    v232 = v293;
                    v233 = v295 + v296;
                    v234 = v295 + v296 + v229;
                    *(autolink + 80) = v293;
                    *(autolink + 84) = v234;
                    v235 = v233 + v231;
                    v15 = v287;
                    *(autolink + 88) = v232;
                    *(autolink + 92) = v235;
                    v173 = autolink;
                    v174 = v190;
LABEL_389:
                    adjust_subj_node_newlines(&v288, v173, v174, 1, v4);
                    goto LABEL_253;
                  }

                  v281 = _scan_at(_scan_html_comment, &v289, v294 + 1);
                  if (v281 >= 1)
                  {
                    v190 = v281 + 1;
                    goto LABEL_388;
                  }

                  v244 = 8;
                }

                else
                {
                  if ((v292 & 2) != 0)
                  {
                    goto LABEL_287;
                  }

                  v279 = _scan_at(_scan_html_declaration, &v289, v294 + 1);
                  if (v279 < 1)
                  {
                    goto LABEL_287;
                  }

                  v190 = v279 + 2;
                  if (v294 + v279 + 2 <= v290)
                  {
                    goto LABEL_388;
                  }

                  v244 = 2;
                }

                goto LABEL_395;
              }

              v190 = _scan_at(_scan_html_tag, &v289, v294);
            }

            if (v190 >= 1)
            {
              goto LABEL_388;
            }

LABEL_287:
            v170 = v294;
            if ((v4 & 0x1000) == 0 || (v171 = _scan_at(_scan_liberal_html_tag, &v289, v294), v170 = v294, v171 < 1))
            {
              autolink = (*v288)(1, 184);
              cmark_strbuf_init(v288, autolink, 0);
              *(autolink + 100) = -16383;
              *(autolink + 144) = "<";
              *(autolink + 152) = 1;
              v184 = v293;
              v185 = v296 + v170 + v295;
              *(autolink + 80) = v293;
              *(autolink + 84) = v185;
              *(autolink + 88) = v184;
              *(autolink + 92) = v185;
              goto LABEL_253;
            }

            v172 = v171;
            v294 += v171;
            autolink = make_literal(&v288, 49157, v170 - 1, v170 + v171 - 1, v289 + v170 - 1, (v171 + 1));
            v173 = autolink;
            v174 = v172;
            goto LABEL_389;
          }

          v59 = v14 + 1;
          v294 = v14 + 1;
          if ((v4 & 0x400) != 0 && v59 < v16)
          {
            if (*(v289 + v59) == 46)
            {
              v127 = v14 + 2;
              v294 = v14 + 2;
              if (v14 + 2 < v16)
              {
                if (*(v289 + v127) == 46)
                {
                  v294 = v14 + 3;
                  autolink = (*v288)(1, 184);
                  cmark_strbuf_init(v288, autolink, 0);
                  *(autolink + 100) = -16383;
                  *(autolink + 144) = "…";
                  *(autolink + 152) = 3;
                  v191 = v293;
                  v192 = v296 + v295 + 1;
                  *(autolink + 80) = v293;
                  *(autolink + 84) = v192 + v14;
                  *(autolink + 88) = v191;
                  v61 = v192 + v127;
                  goto LABEL_93;
                }

                if (!*(v289 + v127))
                {
                  cmark_parse_inlines_cold_1();
                }
              }

              autolink = (*v288)(1, 184);
              cmark_strbuf_init(v288, autolink, 0);
              *(autolink + 100) = -16383;
              *(autolink + 144) = "..";
              *(autolink + 152) = 2;
              v128 = v293;
              v129 = v296 + v295 + 1;
              *(autolink + 80) = v293;
              *(autolink + 84) = v129 + v14;
              *(autolink + 88) = v128;
              v61 = v129 + v59;
LABEL_93:
              *(autolink + 92) = v61;
              goto LABEL_253;
            }

            if (!*(v289 + v59))
            {
              cmark_parse_inlines_cold_1();
            }
          }

          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = ".";
          *(autolink + 152) = 1;
          v60 = v293;
          v61 = v296 + v59 + v295;
          *(autolink + 80) = v293;
          *(autolink + 84) = v61;
          *(autolink + 88) = v60;
          goto LABEL_93;
        }

        if (v21 == 91)
        {
          v294 = v14 + 1;
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = "[";
          *(autolink + 152) = 1;
          v65 = v293;
          v66 = v296 + v14 + 1 + v295;
          *(autolink + 80) = v293;
          *(autolink + 84) = v66;
          *(autolink + 88) = v65;
          *(autolink + 92) = v66;
          v67 = (*v288)(1, 32);
          v68 = *(&v297 + 1);
          if (*(&v297 + 1))
          {
            *(*(&v297 + 1) + 25) = 1;
            *(v67 + 26) = *(v68 + 26);
            v68 = *(&v297 + 1);
          }

          *(v67 + 20) = 0;
          *(v67 + 24) = 1;
          *v67 = v68;
          *(v67 + 8) = autolink;
          *(v67 + 16) = v294;
          *(v67 + 25) = 256;
          *(&v297 + 1) = v67;
          BYTE5(v317[2]) = 0;
          goto LABEL_253;
        }

        v33 = v14 + 1;
        v294 = v33;
        if (v33 >= v16)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(v289 + v33);
          if (!v34)
          {
            cmark_parse_inlines_cold_1();
          }
        }

        v105 = *(a1 + 152);
        if (!v105)
        {
          v105 = cmark_ispunct;
        }

        v106 = (v105)(v34);
        v107 = v294;
        v108 = v294;
        if (v106)
        {
          ++v294;
          v109 = v289 + v108;
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = v109;
          *(autolink + 152) = 1;
          v110 = v293;
          v111 = v295 + v296;
          v112 = v295 + v296 + v107;
          *(autolink + 80) = v293;
          *(autolink + 84) = v112;
          v113 = v111 + v107 + 1;
LABEL_308:
          *(autolink + 88) = v110;
          *(autolink + 92) = v113;
          goto LABEL_253;
        }

        if (v294 >= v290)
        {
LABEL_307:
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = "\";
          *(autolink + 152) = 1;
          v110 = v293;
          v113 = v296 + v107 + v295;
          *(autolink + 80) = v293;
          *(autolink + 84) = v113;
          goto LABEL_308;
        }

        if (*(v289 + v294) == 13)
        {
          v107 = ++v294;
          v119 = 1;
        }

        else
        {
          if (!*(v289 + v294))
          {
            cmark_parse_inlines_cold_1();
          }

          v119 = 0;
        }

        if (v107 < v290)
        {
          if (*(v289 + v107) == 10)
          {
            v294 = v107 + 1;
            goto LABEL_348;
          }

          if (!*(v289 + v107))
          {
            cmark_parse_inlines_cold_1();
          }
        }

        if (((v107 < v290) & ~v119) != 0)
        {
          goto LABEL_307;
        }

LABEL_348:
        v200 = v288;
        autolink = (*v288)(1, 184);
        cmark_strbuf_init(v200, autolink, 0);
        *(autolink + 100) = -16381;
        goto LABEL_253;
      }

      if (*v20 > 0x5Eu)
      {
        if (v21 != 95)
        {
          if (v21 != 96)
          {
            goto LABEL_253;
          }

          v35 = v16 - v14;
          v36 = 1;
          v37 = (v289 + v14);
          v38 = v14;
          while (1)
          {
            v40 = *v37++;
            v39 = v40;
            if (v40 != 96)
            {
              break;
            }

            v294 = ++v38;
            ++v36;
            if (v16 == v38)
            {
              v38 = v16;
LABEL_111:
              if (v35 > 80 || BYTE4(v317[2]) == 1 && *(&v298 + v35) <= v38)
              {
                goto LABEL_212;
              }

              v79 = v38;
              while (1)
              {
                if (v79 < v16)
                {
                  v80 = v16 - v79;
                  v81 = (v18 + v79);
                  while (1)
                  {
                    v83 = *v81++;
                    v82 = v83;
                    if (v83 == 96)
                    {
                      break;
                    }

                    if (!v82)
                    {
                      cmark_parse_inlines_cold_1();
                    }

                    v294 = ++v79;
                    if (!--v80)
                    {
                      goto LABEL_211;
                    }
                  }
                }

                v84 = v16 - v79;
                if (v16 <= v79)
                {
                  break;
                }

                v85 = 0;
                v86 = v16 - v79;
                v87 = v18 + v79;
                while (*(v87 + v85) == 96)
                {
                  v294 = ++v79;
                  if (v86 == ++v85)
                  {
                    v79 = v16;
                    goto LABEL_128;
                  }
                }

                if (!*(v87 + v85))
                {
                  cmark_parse_inlines_cold_1();
                }

                v84 = v85;
LABEL_128:
                if (v84 <= 0x50)
                {
                  *(&v298 + v84) = v79 - v84;
                }

                if (v84 == v35)
                {
                  if (v79)
                  {
                    v318 = v288;
                    v319 = &cmark_strbuf__initbuf;
                    v320 = 0;
                    v88 = v79 - v38;
                    cmark_strbuf_set(&v318, (v18 + v38), (v79 - v38 - v35));
                    v89 = HIDWORD(v320);
                    if (SHIDWORD(v320) < 1)
                    {
                      LODWORD(v90) = 0;
                    }

                    else
                    {
                      v90 = 0;
                      v91 = 0;
                      v92 = 0;
                      v93 = v319;
                      do
                      {
                        v94 = v90;
                        while (1)
                        {
                          v95 = v93[v91];
                          if (v95 != 13)
                          {
                            break;
                          }

                          if (v93[v91 + 1] != 10)
                          {
                            v96 = 32;
                            goto LABEL_143;
                          }

                          ++v91;
                          v92 = 1;
                          if (v91 >= v89)
                          {
                            goto LABEL_344;
                          }
                        }

                        if (v95 == 10)
                        {
                          v96 = 32;
                        }

                        else
                        {
                          v96 = v93[v91];
                        }

LABEL_143:
                        ++v90;
                        v93[v94] = v96;
                        v93 = v319;
                        v89 = HIDWORD(v320);
                        v92 |= v319[v91++] != 32;
                      }

                      while (v91 < SHIDWORD(v320));
                      if (v92)
                      {
LABEL_344:
                        if (*v93 == 32 && v93[v90 - 1] == 32)
                        {
                          cmark_strbuf_drop(&v318, 1);
                          LODWORD(v90) = v90 - 2;
                        }
                      }
                    }

                    cmark_strbuf_truncate(&v318, v90);
                    v236 = v79 + ~v35;
                    v237 = HIDWORD(v320);
                    v238 = cmark_strbuf_detach(&v318);
                    v239 = v237 | 0x100000000;
                    autolink = (*v288)(1, 184);
                    cmark_strbuf_init(v288, autolink, 0);
                    *(autolink + 144) = v238;
                    *(autolink + 152) = v239;
                    v240 = v295;
                    v241 = v293;
                    v242 = v296 + 1;
                    v243 = v295 + v38 + v296 + 1;
                    *(autolink + 80) = v293;
                    *(autolink + 84) = v243;
                    *(autolink + 100) = -16380;
                    *(autolink + 88) = v241;
                    *(autolink + 92) = v236 + v240 + v242;
                    *(autolink + 104) = v35;
                    adjust_subj_node_newlines(&v288, autolink, v88, v35, v4);
LABEL_245:
                    v5 = v286;
                    goto LABEL_252;
                  }

LABEL_212:
                  v294 = v38;
                  autolink = (*v288)(1, 184);
                  cmark_strbuf_init(v288, autolink, 0);
                  *(autolink + 144) = v20;
                  *(autolink + 152) = v35;
                  v141 = v293;
                  v142 = v14 + v296 + v295;
                  *(autolink + 80) = v293;
                  *(autolink + 84) = v142 + 1;
                  *(autolink + 100) = -16383;
                  *(autolink + 88) = v141;
                  *(autolink + 92) = v142 + v35;
                  v5 = v286;
                  goto LABEL_253;
                }
              }

LABEL_211:
              BYTE4(v317[2]) = 1;
              goto LABEL_212;
            }
          }

          if (!v39)
          {
            cmark_parse_inlines_cold_1();
          }

          v35 = v36 - 1;
          goto LABEL_111;
        }

        goto LABEL_55;
      }

      if (v21 != 93)
      {
        v32 = v14 + 1;
        if (v14 + 1 < v16)
        {
          if (*(v289 + v32) == 91)
          {
            v294 = v14 + 2;
            autolink = (*v288)(1, 184);
            cmark_strbuf_init(v288, autolink, 0);
            v123 = v293;
            v124 = v296 + v295 + 1;
            *(autolink + 80) = v293;
            *(autolink + 84) = v124 + v14;
            *(autolink + 100) = -16383;
            *(autolink + 144) = "^[";
            *(autolink + 152) = 2;
            *(autolink + 88) = v123;
            *(autolink + 92) = v124 + v32;
            v125 = (*v288)(1, 32);
            v126 = *(&v297 + 1);
            if (*(&v297 + 1))
            {
              *(*(&v297 + 1) + 25) = 1;
              *(v125 + 26) = *(v126 + 26);
              v126 = *(&v297 + 1);
            }

            *(v125 + 20) = 2;
            *(v125 + 24) = 1;
            *v125 = v126;
            *(v125 + 8) = autolink;
            *(v125 + 16) = v294;
            *(v125 + 28) = 1;
            *(&v297 + 1) = v125;
            BYTE5(v317[2]) = 0;
            goto LABEL_253;
          }

          if (!*(v289 + v32))
          {
            cmark_parse_inlines_cold_1();
          }
        }

        autolink = 0;
        goto LABEL_253;
      }

      v325 = 0;
      v326 = 0;
      v323 = 0;
      v324 = 0;
      v321 = 0;
      v322 = 0;
      v62 = v14 + 1;
      v294 = v14 + 1;
      v63 = *(&v297 + 1);
      if (!*(&v297 + 1))
      {
        autolink = (*v288)(1, 184);
        cmark_strbuf_init(v288, autolink, 0);
        *(autolink + 100) = -16383;
        *(autolink + 144) = "]";
        *(autolink + 152) = 1;
        v116 = v293;
        v117 = v296 + v62 + v295;
        *(autolink + 80) = v293;
        *(autolink + 84) = v117;
        *(autolink + 88) = v116;
        *(autolink + 92) = v117;
        goto LABEL_253;
      }

      v64 = *(*(&v297 + 1) + 20);
      if (v64 == 2)
      {
        if (v62 >= v16)
        {
          goto LABEL_356;
        }

        if (*(v289 + v62) != 40)
        {
          if (!*(v289 + v62))
          {
            cmark_parse_inlines_cold_1();
          }

          goto LABEL_356;
        }

        v179 = v14 + 2;
        if (v16 <= v14 + 2)
        {
          LODWORD(v183) = v14 + 2;
          goto LABEL_350;
        }

        v180 = 0;
        v181 = v14 + 2;
        while (1)
        {
          v182 = *(v289 + v181);
          if (v182 == 92)
          {
            v183 = v181 + 1;
            if (v183 >= v16)
            {
              goto LABEL_323;
            }

            if (cmark_ispunct(*(v289 + v183)))
            {
              LODWORD(v183) = v181 + 2;
              goto LABEL_323;
            }

            v182 = *(v289 + v181);
          }

          if (v182 == 40)
          {
            if (++v180 > 0x20)
            {
              goto LABEL_356;
            }
          }

          else if (v182 == 41)
          {
            if (!v180)
            {
              v16 = v290;
              LODWORD(v183) = v181;
LABEL_350:
              if (v183 < v16)
              {
                v201 = (v289 + v179);
                v202 = v183 - v179;
                if (v183 - v179 >= 0)
                {
                  v203 = v202 + v294 + 1;
                  if (*(v289 + v203) == 41)
                  {
                    v294 += v202 + 2;
                    v202 = v203 - v179;
                    if (v203 == v179)
                    {
                      v201 = 0;
                    }

                    v204 = 1;
LABEL_358:
                    v318 = &unk_2985BB8EE;
                    v319 = 0;
                    if (link_label(&v288, &v318, 0))
                    {
                      v205 = cmark_map_lookup(*(&v296 + 1), &v318);
                      if (HIDWORD(v319))
                      {
                        (v288[2])(v318);
                      }

                      v318 = 0;
                      v319 = 0;
                      if (v205)
                      {
                        if (v205[32] == 1)
                        {
                          v201 = chunk_clone(v288, (v205 + 72));
                          v207 = v206;
                          goto LABEL_366;
                        }
                      }
                    }

                    if (v204)
                    {
                      v207 = v202;
LABEL_366:
                      v208 = v288;
                      v209 = (*v288)(1, 184);
                      cmark_strbuf_init(v208, v209, 0);
                      *(v209 + 100) = -16372;
                      *(v209 + 144) = v201;
                      *(v209 + 152) = v207;
                      v210 = v293;
                      v211 = v294;
                      *(v209 + 88) = v293;
                      *(v209 + 80) = v210;
                      v212 = *(v63 + 8);
                      *(v209 + 84) = *(v212 + 84);
                      *(v209 + 92) = v296 + v211 + v295;
                      cmark_node_insert_before(v212, v209);
                      v213 = *(v63 + 8);
                      v214 = v213[3];
                      if (v214)
                      {
                        v5 = v286;
                        v15 = v287;
                        do
                        {
                          v215 = v214[3];
                          cmark_node_append_child(v209, v214);
                          v214 = v215;
                        }

                        while (v215);
                        v213 = *(v63 + 8);
                      }

                      else
                      {
                        v5 = v286;
                        v15 = v287;
                      }

                      cmark_node_free(v213);
                      process_emphasis(a1, &v288, *(v63 + 16));
LABEL_375:
                      if (*(&v297 + 1))
                      {
                        *(&v297 + 1) = **(&v297 + 1);
                        (v288[2])();
                      }

                      autolink = 0;
                      goto LABEL_253;
                    }

                    v216 = *(&v297 + 1);
                    if (*(&v297 + 1))
                    {
                      *(&v297 + 1) = **(&v297 + 1);
                      (v288[2])(v216);
                    }

LABEL_372:
                    v217 = v294;
                    autolink = (*v288)(1, 184);
                    cmark_strbuf_init(v288, autolink, 0);
                    *(autolink + 100) = -16383;
                    *(autolink + 144) = "]";
                    *(autolink + 152) = 1;
                    v218 = v295;
                    v219 = v293;
                    v220 = v296 + v217;
LABEL_431:
                    v266 = v220 + v218;
                    *(autolink + 80) = v219;
                    *(autolink + 84) = v266;
                    *(autolink + 88) = v219;
                    *(autolink + 92) = v266;
LABEL_432:
                    v15 = v287;
                    goto LABEL_253;
                  }
                }

LABEL_357:
                v204 = 0;
                goto LABEL_358;
              }

LABEL_356:
              v201 = 0;
              v202 = 0;
              goto LABEL_357;
            }

            --v180;
          }

          LODWORD(v183) = v181 + 1;
LABEL_323:
          v16 = v290;
          v181 = v183;
          if (v183 >= v290)
          {
            goto LABEL_350;
          }
        }
      }

      if (v64 != 1 && BYTE5(v317[2]) == 1)
      {
        *(&v297 + 1) = **(&v297 + 1);
        (v288[2])(v63);
        goto LABEL_372;
      }

      if (v62 < v16)
      {
        if (*(v289 + v62) == 40)
        {
          v193 = _scan_at(_scan_spacechars, &v289, v14 + 2);
          if ((v193 & 0x80000000) == 0)
          {
            v194 = v193 + 1;
            v195 = manual_scan_link_url(&v289, v294 + v193 + 1, &v325);
            if ((v195 & 0x80000000) == 0)
            {
              v196 = v195 + v194 + v294;
              v197 = _scan_at(_scan_spacechars, &v289, v196);
              v198 = v196 + v197;
              if (v197)
              {
                v199 = _scan_at(_scan_link_title, &v289, v198) + v198;
              }

              else
              {
                v199 = v198;
              }

              v245 = _scan_at(_scan_spacechars, &v289, v199) + v199;
              if (*(v289 + v245) == 41)
              {
                v294 = v245 + 1;
                v323 = (v289 + v198);
                v324 = (v199 - v198);
                v246 = cmark_clean_url(v288, &v325);
                v248 = v247;
                v249 = cmark_clean_title(v288, &v323);
                v251 = v250;
                v283 = v248;
                if (HIDWORD(v326))
                {
                  (v288[2])(v325);
                }

                v252 = v251;
                goto LABEL_434;
              }

              v294 = v14 + 1;
            }
          }
        }

        else if (!*(v289 + v62))
        {
          cmark_parse_inlines_cold_1();
        }
      }

      v321 = &unk_2985BB8EE;
      v322 = 0;
      if (link_label(&v288, &v321, 0))
      {
        if (v322 || (*(v63 + 25) & 1) != 0)
        {
LABEL_410:
          v254 = cmark_map_lookup(*(&v296 + 1), &v321);
          if (HIDWORD(v322))
          {
            (v288[2])(v321);
          }

          v321 = 0;
          v322 = 0;
          if (!v254 || (v254[32] & 1) != 0)
          {
            goto LABEL_414;
          }

          v246 = chunk_clone(v288, (v254 + 40));
          v283 = v267;
          v249 = chunk_clone(v288, (v254 + 56));
          v252 = v268;
LABEL_434:
          v269 = v288;
          v270 = (*v288)(1, 184);
          cmark_strbuf_init(v269, v270, 0);
          if (v64 == 1)
          {
            v271 = -16374;
          }

          else
          {
            v271 = -16375;
          }

          *(v270 + 100) = v271;
          *(v270 + 144) = v246;
          *(v270 + 152) = v283;
          *(v270 + 160) = v249;
          *(v270 + 168) = v252;
          v272 = *(v63 + 8);
          *(v270 + 80) = *(v272 + 80);
          v273 = v296 + v294 + v295;
          *(v270 + 88) = v293;
          *(v270 + 92) = v273;
          cmark_node_insert_before(v272, v270);
          v274 = *(v63 + 8);
          v275 = v274[3];
          if (v275)
          {
            do
            {
              v276 = v275[3];
              cmark_node_unlink(v275);
              v277 = *(v270 + 56);
              v275[3] = 0;
              v275[4] = v277;
              v275[5] = v270;
              *(v270 + 56) = v275;
              if (v277)
              {
                v278 = (v277 + 24);
              }

              else
              {
                v278 = (v270 + 48);
              }

              *v278 = v275;
              v275 = v276;
            }

            while (v276);
            v274 = *(v63 + 8);
            v4 = v285;
          }

          cmark_node_free(v274);
          process_emphasis(a1, &v288, *(v63 + 16));
          v5 = v286;
          if (*(&v297 + 1))
          {
            *(&v297 + 1) = **(&v297 + 1);
            (v288[2])();
          }

          autolink = 0;
          if (v64 != 1)
          {
            BYTE5(v317[2]) = 1;
          }

          goto LABEL_432;
        }
      }

      else
      {
        v294 = v14 + 1;
        if (*(v63 + 25))
        {
LABEL_414:
          if ((*(a1 + 121) & 0x20) != 0)
          {
            v255 = *(*(v63 + 8) + 24);
            if (v255)
            {
              if (*(v255 + 100) == 49153)
              {
                v256 = *(v255 + 152);
                if (v256 >= 1 && **(v255 + 144) == 94 && (v256 != 1 || *(v255 + 24)))
                {
                  v294 = v14 + 1;
                  v257 = v288;
                  v258 = (*v288)(1, 184);
                  cmark_strbuf_init(v257, v258, 0);
                  *(v258 + 100) = -16373;
                  v259 = v293;
                  v260 = v296 + v294 + v295;
                  v261 = *(*(v63 + 8) + 84);
                  LODWORD(v262) = v260 - v261 - 2;
                  if (v261 + 2 <= v260)
                  {
                    v262 = v262;
                  }

                  else
                  {
                    v262 = 0;
                  }

                  *(v258 + 144) = *(v255 + 144) + 1;
                  *(v258 + 152) = v262;
                  *(v258 + 80) = v259;
                  *(v258 + 84) = v261;
                  *(v258 + 88) = v259;
                  *(v258 + 92) = v260;
                  cmark_node_insert_before(*(v63 + 8), v258);
                  process_emphasis(a1, &v288, *(v63 + 16));
                  v263 = *(v63 + 8);
                  v264 = v263[3];
                  if (v264)
                  {
                    do
                    {
                      v265 = v264[3];
                      cmark_node_free(v264);
                      v264 = v265;
                    }

                    while (v265);
                    v263 = *(v63 + 8);
                  }

                  v15 = v287;
                  cmark_node_free(v263);
                  goto LABEL_375;
                }
              }
            }
          }

          if (*(&v297 + 1))
          {
            *(&v297 + 1) = **(&v297 + 1);
            (v288[2])();
          }

          v294 = v14 + 1;
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = "]";
          *(autolink + 152) = 1;
          v218 = v295;
          v219 = v293;
          v220 = v296 + v62;
          goto LABEL_431;
        }
      }

      if (HIDWORD(v322))
      {
        (v288[2])(v321);
      }

      v253 = *(v63 + 16);
      v321 = (v289 + v253);
      v322 = (v14 - v253);
      goto LABEL_410;
    }

    if (*v20 <= 0x25u)
    {
      if (*v20 <= 0x20u)
      {
        if (v21 == 10 || v21 == 13)
        {
          if (v284)
          {
            v294 = v14 + 1;
            autolink = (*v288)(1, 184);
            cmark_strbuf_init(v288, autolink, 0);
            *(autolink + 100) = -16383;
            *(autolink + 144) = v20;
            *(autolink + 152) = 1;
            v23 = v293;
            v24 = v296 + v14 + 1 + v295;
            *(autolink + 80) = v293;
            *(autolink + 84) = v24;
            *(autolink + 88) = v23;
            *(autolink + 92) = v24;
          }

          else
          {
            v97 = *v20;
            v98 = v14;
            if (v21 == 13)
            {
              v98 = v14 + 1;
              v294 = v14 + 1;
              v97 = *(v289 + v14 + 1);
            }

            if (v97 == 10)
            {
              v294 = ++v98;
            }

            ++v293;
            LODWORD(v296) = -v98;
            v13 = __OFSUB__(v16, v98);
            v99 = v16 - v98;
            if (!((v99 < 0) ^ v13 | (v99 == 0)))
            {
              v100 = v98 + 1;
              v101 = (v289 + v98);
              while (1)
              {
                v103 = *v101++;
                v102 = v103;
                if (v103 != 32 && v102 != 9)
                {
                  break;
                }

                v294 = v100++;
                if (!--v99)
                {
                  goto LABEL_179;
                }
              }

              if (!v102)
              {
                cmark_parse_inlines_cold_1();
              }
            }

LABEL_179:
            if (v14 >= 2 && (v120 = v289 + v14, *(v120 - 1) == 32) && *(v120 - 2) == 32)
            {
              v121 = -16381;
            }

            else
            {
              v121 = -16382;
            }

            v122 = v288;
            autolink = (*v288)(1, 184);
            cmark_strbuf_init(v122, autolink, 0);
            *(autolink + 100) = v121;
          }
        }

        else if (!*v20)
        {
          cmark_parse_inlines_cold_1();
        }

        goto LABEL_253;
      }

      if (v21 != 33)
      {
        if (v21 != 34)
        {
          goto LABEL_253;
        }

        goto LABEL_55;
      }

      v78 = v14 + 1;
      if (v14 + 1 < v16)
      {
        if (*(v289 + v78) != 91)
        {
          if (!*(v289 + v78))
          {
            cmark_parse_inlines_cold_1();
          }

          goto LABEL_108;
        }

        v134 = v14 + 2;
        if (v134 >= v16)
        {
LABEL_201:
          v294 = v14 + 2;
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          v135 = v293;
          v136 = v296 + v295 + 1;
          *(autolink + 80) = v293;
          *(autolink + 84) = v136 + v14;
          *(autolink + 100) = -16383;
          *(autolink + 144) = "![";
          *(autolink + 152) = 2;
          *(autolink + 88) = v135;
          *(autolink + 92) = v136 + v78;
          v137 = (*v288)(1, 32);
          v138 = *(&v297 + 1);
          if (*(&v297 + 1))
          {
            *(*(&v297 + 1) + 25) = 1;
            *(v137 + 26) = *(v138 + 26);
            v138 = *(&v297 + 1);
          }

          *(v137 + 20) = 1;
          *(v137 + 24) = 1;
          *v137 = v138;
          *(v137 + 8) = autolink;
          *(v137 + 16) = v294;
          *(v137 + 27) = 1;
          *(&v297 + 1) = v137;
          goto LABEL_253;
        }

        if (*(v289 + v134) != 94)
        {
          if (!*(v289 + v134))
          {
            cmark_parse_inlines_cold_1();
          }

          goto LABEL_201;
        }
      }

LABEL_108:
      autolink = 0;
      goto LABEL_253;
    }

    if (*v20 <= 0x29u)
    {
      if (v21 == 38)
      {
        v318 = v288;
        v319 = &cmark_strbuf__initbuf;
        v320 = 0;
        v294 = v14 + 1;
        v69 = houdini_unescape_ent(&v318, (v289 + v14 + 1), v16 - (v14 + 1));
        v70 = v294;
        if (v69)
        {
          v294 += v69;
          v71 = v294;
          v72 = HIDWORD(v320);
          v73 = cmark_strbuf_detach(&v318);
          v74 = v72 | 0x100000000;
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = v73;
          *(autolink + 152) = v74;
          v75 = v293;
          v76 = v295 + v296;
          *(autolink + 80) = v293;
          *(autolink + 84) = v76 + v70;
          *(autolink + 88) = v75;
          v77 = v76 + v71;
        }

        else
        {
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = "&";
          *(autolink + 152) = 1;
          v118 = v293;
          v77 = v296 + v70 + v295;
          *(autolink + 80) = v293;
          *(autolink + 84) = v77;
          *(autolink + 88) = v118;
        }

        *(autolink + 92) = v77;
        goto LABEL_253;
      }

      if (v21 != 39)
      {
        goto LABEL_253;
      }

      goto LABEL_55;
    }

    if (v21 != 42)
    {
      if (v21 != 45)
      {
        goto LABEL_253;
      }

      v41 = v14 + 1;
      v294 = v14 + 1;
      if ((v4 & 0x400) == 0 || v41 >= v16)
      {
        goto LABEL_52;
      }

      if (*(v289 + v41) != 45)
      {
        if (!*(v289 + v41))
        {
          cmark_parse_inlines_cold_1();
        }

LABEL_52:
        autolink = (*v288)(1, 184);
        cmark_strbuf_init(v288, autolink, 0);
        *(autolink + 100) = -16383;
        *(autolink + 144) = "-";
        *(autolink + 152) = 1;
        v42 = v293;
        v43 = v296 + v41 + v295;
        *(autolink + 80) = v293;
        *(autolink + 84) = v43;
        *(autolink + 88) = v42;
        *(autolink + 92) = v43;
        goto LABEL_253;
      }

      v130 = (v289 + v41);
      v131 = v14 + 1;
      while (1)
      {
        v133 = *v130++;
        v132 = v133;
        if (v133 != 45)
        {
          break;
        }

        v294 = ++v131;
        if (v16 == v131)
        {
          v131 = v16;
          goto LABEL_204;
        }
      }

      if (!v132)
      {
        cmark_parse_inlines_cold_1();
      }

LABEL_204:
      v139 = v131 - v14;
      v318 = v288;
      v319 = &cmark_strbuf__initbuf;
      v320 = 0;
      if (v139 % 3)
      {
        if ((v139 & 1) == 0)
        {
          v140 = v139 >> 1;
LABEL_382:
          if (v140 >= 1)
          {
            v222 = v140 + 1;
            do
            {
              cmark_strbuf_puts(&v318, "–");
              --v222;
            }

            while (v222 > 1);
          }

          v223 = v294;
          v224 = HIDWORD(v320);
          v225 = cmark_strbuf_detach(&v318);
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = v225;
          *(autolink + 152) = v224 | 0x100000000;
          v226 = v293;
          v227 = v295 + v296;
          v228 = v295 + v296 + v41;
          *(autolink + 80) = v293;
          *(autolink + 84) = v228;
          *(autolink + 88) = v226;
          *(autolink + 92) = v227 + v223;
          v4 = v285;
          goto LABEL_253;
        }

        if (v139 % 3 == 2)
        {
          v139 -= 2;
          v140 = 1;
        }

        else
        {
          v139 -= 4;
          v140 = 2;
        }
      }

      else
      {
        v140 = 0;
      }

      if (v139 >= 3)
      {
        v221 = v139 / 3u + 1;
        do
        {
          cmark_strbuf_puts(&v318, "—");
          --v221;
        }

        while (v221 > 1);
      }

      goto LABEL_382;
    }

LABEL_55:
    LODWORD(v318) = 0;
    LODWORD(v325) = 0;
    if (!v14)
    {
      goto LABEL_66;
    }

    v44 = 1;
    while ((*(v289 - 1 + v19) & 0xC0) == 0x80)
    {
      if (v19 < 2)
      {
        goto LABEL_63;
      }

LABEL_62:
      ++v44;
      --v19;
    }

    if (v19 >= 2 && *(*(a1 + 160) + *(v289 - 1 + v19)))
    {
      goto LABEL_62;
    }

LABEL_63:
    if (cmark_utf8proc_iterate((v289 + v19 - 1), v44, &v325) == -1 || v325 <= 255 && *(*(a1 + 160) + v325))
    {
LABEL_66:
      LODWORD(v325) = 10;
    }

    if (v21 == 34 || v21 == 39)
    {
      v45 = v290;
      LODWORD(v46) = ++v294;
      v47 = 1;
    }

    else
    {
      v45 = v290;
      v47 = 0;
      v56 = v290 - v294;
      if (v290 <= v294)
      {
        LODWORD(v46) = v294;
      }

      else
      {
        v46 = v294;
        v57 = v294 + 1;
        while (1)
        {
          if (!*(v289 + v46))
          {
            cmark_parse_inlines_cold_1();
          }

          if (*(v289 + v46) != v21)
          {
            break;
          }

          v58 = v57 + v47++;
          ++v46;
          v294 = v58;
          if (v290 == v46)
          {
            LODWORD(v46) = v290;
            v47 = v56;
            break;
          }
        }
      }
    }

    if (v46 == v45)
    {
      goto LABEL_77;
    }

    v48 = v46;
    v49 = v45;
    v50 = v45 - v46 + 1;
    v51 = (v289 + v46 - 1);
    do
    {
      v53 = *++v51;
      v52 = v53;
      --v50;
      if (v48 >= v49)
      {
        break;
      }

      ++v48;
    }

    while (*(*(a1 + 160) + v52));
    if (cmark_utf8proc_iterate(v51, v50, &v318) == -1 || (v54 = v318, v318 <= 255) && *(*(a1 + 160) + v318))
    {
LABEL_77:
      v54 = 10;
      LODWORD(v318) = 10;
    }

    if (!v47)
    {
      is_punctuation = 0;
      goto LABEL_215;
    }

    if (cmark_utf8proc_is_space(v54))
    {
      is_punctuation = 0;
    }

    else
    {
      is_punctuation = !cmark_utf8proc_is_punctuation(v318) || cmark_utf8proc_is_space(v325) || cmark_utf8proc_is_punctuation(v325);
    }

    if (cmark_utf8proc_is_space(v325))
    {
LABEL_215:
      v143 = 0;
    }

    else
    {
      v143 = !cmark_utf8proc_is_punctuation(v325) || cmark_utf8proc_is_space(v318) || cmark_utf8proc_is_punctuation(v318);
    }

    if (v21 == 34 || v21 == 39)
    {
      if (is_punctuation)
      {
        v147 = v325 != 93 && v325 != 41;
        is_punctuation = !v143 && v147;
      }
    }

    else if (v21 == 95)
    {
      v144 = is_punctuation ^ 1;
      v145 = !v143;
      if (((is_punctuation ^ 1) & 1) == 0 && (v145 & 1) == 0)
      {
        is_punctuation = cmark_utf8proc_is_punctuation(v325);
      }

      if (((v144 | v145) & 1) == 0)
      {
        v143 = cmark_utf8proc_is_punctuation(v318);
      }

LABEL_241:
      v148 = (v289 - v47 + v294);
      v149 = v47;
      goto LABEL_242;
    }

    if ((v4 & 0x400) != 0 && v21 == 39)
    {
      v148 = "’";
    }

    else
    {
      if ((v4 & 0x400) == 0 || v21 != 34)
      {
        goto LABEL_241;
      }

      if (v143)
      {
        v148 = "”";
      }

      else
      {
        v148 = "“";
      }
    }

    v149 = 3;
LABEL_242:
    v150 = v294;
    autolink = (*v288)(1, 184);
    cmark_strbuf_init(v288, autolink, 0);
    *(autolink + 144) = v148;
    *(autolink + 152) = v149;
    v151 = v293;
    v152 = v295 + v296;
    *(autolink + 100) = -16383;
    *(autolink + 80) = v151;
    *(autolink + 84) = v150 - v47 + v152 + 1;
    *(autolink + 88) = v151;
    *(autolink + 92) = v152 + v150;
    if ((is_punctuation & 1) == 0 && !v143)
    {
      v4 = v285;
      goto LABEL_245;
    }

    v4 = v285;
    v5 = v286;
    if (v21 != 39 && v21 != 34 || (v285 & 0x400) != 0)
    {
      v153 = (*v288)(1, 48);
      *(v153 + 32) = v21;
      *(v153 + 36) = is_punctuation;
      *(v153 + 40) = v143;
      *(v153 + 16) = autolink;
      *(v153 + 24) = v294;
      *(v153 + 28) = *(autolink + 152);
      v154 = v297;
      *v153 = v297;
      *(v153 + 8) = 0;
      if (v154)
      {
        *(v154 + 8) = v153;
      }

      *&v297 = v153;
    }

LABEL_252:
    v15 = v287;
LABEL_253:
    if (v294 == v14)
    {
      if (!autolink)
      {
        v155 = (a1 + 144);
        while (1)
        {
          v155 = *v155;
          if (!v155)
          {
            break;
          }

          v156 = (*(v155[1] + 16))();
          if (v156)
          {
            autolink = v156;
            goto LABEL_293;
          }
        }

        v157 = v294;
        v158 = v294 + 1;
        if (v294 + 1 >= v290)
        {
LABEL_267:
          v160 = v290;
        }

        else
        {
          v159 = (v289 + v294 + 1);
          v160 = v294 + 1;
          while (1)
          {
            v162 = *v159++;
            v161 = v162;
            if (*(*(a1 + 168) + v162) || (v4 & 0x400) != 0 && SMART_PUNCT_CHARS[v161])
            {
              break;
            }

            if (v290 == ++v160)
            {
              goto LABEL_267;
            }
          }
        }

        if (v160 == v294)
        {
          ++v294;
          v163 = v289 + v157;
          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = v163;
          *(autolink + 152) = 1;
          v164 = v293;
          v165 = v296 + v158 + v295;
          *(autolink + 80) = v293;
          *(autolink + 84) = v165;
          *(autolink + 88) = v164;
        }

        else
        {
          v166 = (v160 - v294);
          v167 = v289 + v294;
          v294 = v160;
          if (!v284 && v160 < v290)
          {
            v168 = *(v289 + v160);
            if (v168 == 10 || v168 == 13)
            {
              if (v166 >= 1)
              {
                do
                {
                  if (!cmark_isspace(*(v167 - 1 + v166)))
                  {
                    break;
                  }

                  v13 = __OFSUB__(v166, 1);
                  v166 = (v166 - 1);
                }

                while (!((v166 < 0) ^ v13 | (v166 == 0)));
              }
            }

            else if (!*(v289 + v160))
            {
              cmark_parse_inlines_cold_1();
            }
          }

          autolink = (*v288)(1, 184);
          cmark_strbuf_init(v288, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 144) = v167;
          *(autolink + 152) = v166;
          v175 = v293;
          v176 = v295 + v296;
          *(autolink + 80) = v293;
          *(autolink + 84) = v176 + v158;
          *(autolink + 88) = v175;
          v165 = v176 + v160;
          v15 = v287;
        }

        *(autolink + 92) = v165;
      }

LABEL_293:
      v177 = *(v5 + 56);
      *(autolink + 24) = 0;
      *(autolink + 32) = v177;
      *(autolink + 40) = v5;
      *(v5 + 56) = autolink;
      if (v177)
      {
        v178 = (v177 + 24);
      }

      else
      {
        v178 = v15;
      }

      *v178 = autolink;
      v14 = v294;
    }

    else
    {
      if (autolink)
      {
        goto LABEL_293;
      }

      v14 = v294;
    }

    v16 = v290;
  }

  while (v14 < v290);
LABEL_460:
  process_emphasis(a1, &v288, 0);
  while (v297)
  {
    remove_delimiter(&v288, v297);
  }

  while (1)
  {
    result = *(&v297 + 1);
    if (!*(&v297 + 1))
    {
      break;
    }

    *(&v297 + 1) = **(&v297 + 1);
    (v288[2])();
  }

  return result;
}

uint64_t cmark_inline_parser_in_bracket(uint64_t a1, int a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    return v2[28];
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      return v2[26];
    }

    return 0;
  }

  return v2[27];
}

void process_emphasis(uint64_t a1, uint64_t *a2, int a3)
{
  v56 = *MEMORY[0x29EDCA608];
  bzero(v55, 0x600uLL);
  for (i = 0; i != 1536; i += 512)
  {
    v7 = &v55[i];
    v7[42] = a3;
    v7[95] = a3;
    v7[39] = a3;
    v7[34] = a3;
  }

  v8 = a2[7];
  if (!v8)
  {
    goto LABEL_103;
  }

  if (*(v8 + 24) >= a3)
  {
    v10 = a2[7];
    while (1)
    {
      v9 = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (*(v10 + 24) < a3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v9 = 0;
LABEL_9:
    if (!v9)
    {
      goto LABEL_100;
    }
  }

  v49 = a1;
  do
  {
    v11 = *(v9 + 32);
    for (j = *(a1 + 144); j; j = *j)
    {
      v13 = j[1];
      v14 = (v13 + 32);
      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (v11 == *(v14 + 8))
        {
          goto LABEL_18;
        }
      }
    }

    v13 = 0;
LABEL_18:
    if (!*(v9 + 40))
    {
      v21 = *(v9 + 8);
      goto LABEL_96;
    }

    for (k = *v9; k; k = *k)
    {
      v16 = *(k + 24);
      if (v16 < a3)
      {
        break;
      }

      v17 = *(v9 + 28);
      v18 = v17 % 3;
      if (v16 < *&v55[512 * (v17 % 3) + 4 * *(v9 + 32)])
      {
        break;
      }

      if (*(k + 36) && *(k + 32) == v11)
      {
        if (*(v9 + 36))
        {
          if (!v18)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v18)
          {
            v19 = *(k + 40) == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
LABEL_37:
            v20 = 1;
            if (v13)
            {
              goto LABEL_34;
            }

            goto LABEL_38;
          }
        }

        if ((715827882 - 1431655765 * (*(k + 28) + v17)) > 0x55555554)
        {
          goto LABEL_37;
        }
      }
    }

    v20 = 0;
    if (v13)
    {
LABEL_34:
      if (v20)
      {
        v21 = (*(v13 + 24))(v13, a1, a2, k, v9);
        goto LABEL_96;
      }

LABEL_93:
      v21 = *(v9 + 8);
      goto LABEL_94;
    }

LABEL_38:
    if (*(v9 + 32) > 0x29u)
    {
      if (v11 != 95)
      {
        v21 = v9;
        if (v11 != 42)
        {
          goto LABEL_91;
        }
      }

      if (v20)
      {
        v28 = *(k + 16);
        v29 = *(v9 + 16);
        v30 = *(v28 + 152);
        v31 = *(v29 + 152);
        v33 = v31 < 2 || v30 < 2;
        v50 = *(v28 + 152);
        v51 = v33;
        if (v33)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        v53 = v34;
        v54 = *(v29 + 152);
        *(v28 + 152) = v30 - v34;
        *(v29 + 152) = v31 - v34;
        v35 = *v9;
        if (*v9 && v35 != k)
        {
          do
          {
            v36 = *v35;
            remove_delimiter(a2, v35);
            if (v36)
            {
              v37 = v36 == k;
            }

            else
            {
              v37 = 1;
            }

            v35 = v36;
          }

          while (!v37);
        }

        v38 = *a2;
        v39 = (**a2)(1, 184);
        cmark_strbuf_init(v38, v39, 0);
        if (v51)
        {
          v40 = -16377;
        }

        else
        {
          v40 = -16376;
        }

        *(v39 + 100) = v40;
        v52 = v28;
        v41 = *(v28 + 24);
        if (v41)
        {
          v42 = v41 == v29;
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          do
          {
            v43 = v41[3];
            cmark_node_unlink(v41);
            v44 = *(v39 + 56);
            v41[3] = 0;
            v41[4] = v44;
            v41[5] = v39;
            *(v39 + 56) = v41;
            if (v44)
            {
              v45 = (v44 + 24);
            }

            else
            {
              v45 = (v39 + 48);
            }

            *v45 = v41;
            if (v43)
            {
              v46 = v43 == v29;
            }

            else
            {
              v46 = 1;
            }

            v41 = v43;
          }

          while (!v46);
        }

        cmark_node_insert_after(v52, v39);
        *&v47 = v52[10];
        *(&v47 + 1) = *(v29 + 88);
        *(v39 + 80) = v47;
        if (v50 == v53)
        {
          cmark_node_free(v52);
          remove_delimiter(a2, k);
        }

        v21 = v9;
        a1 = v49;
        if (v54 == v53)
        {
          cmark_node_free(v29);
          v21 = *(v9 + 8);
          remove_delimiter(a2, v9);
        }

LABEL_91:
        if (v20)
        {
          goto LABEL_96;
        }

        goto LABEL_94;
      }

      goto LABEL_93;
    }

    if (v11 != 34)
    {
      v21 = v9;
      if (v11 != 39)
      {
        goto LABEL_91;
      }
    }

    v22 = *(v9 + 16);
    if (*(v22 + 156))
    {
      (*(*a2 + 16))(*(v22 + 144));
    }

    *(v22 + 144) = 0;
    *(v22 + 152) = 0;
    v23 = *(v9 + 16);
    if (*(v9 + 32) == 39)
    {
      v24 = "’";
    }

    else
    {
      v24 = "”";
    }

    *(v23 + 144) = v24;
    *(v23 + 152) = 3;
    v21 = *(v9 + 8);
    if (v20)
    {
      v25 = *(k + 16);
      if (*(v25 + 156))
      {
        (*(*a2 + 16))(*(v25 + 144));
      }

      *(v25 + 144) = 0;
      *(v25 + 152) = 0;
      v26 = *(k + 16);
      if (*(v9 + 32) == 39)
      {
        v27 = "‘";
      }

      else
      {
        v27 = "“";
      }

      *(v26 + 144) = v27;
      *(v26 + 152) = 3;
      remove_delimiter(a2, k);
      remove_delimiter(a2, v9);
      goto LABEL_96;
    }

LABEL_94:
    *&v55[512 * (*(v9 + 28) % 3) + 4 * *(v9 + 32)] = *(v9 + 24);
    if (!*(v9 + 36))
    {
      remove_delimiter(a2, v9);
    }

LABEL_96:
    v9 = v21;
  }

  while (v21);
  while (1)
  {
    v8 = a2[7];
LABEL_100:
    if (!v8 || *(v8 + 24) < a3)
    {
      break;
    }

    remove_delimiter(a2, v8);
  }

LABEL_103:
  v48 = *MEMORY[0x29EDCA608];
}

void *cmark_consolidate_text_nodes(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = (**result)(1, 48);
    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 2;
    *(v3 + 40) = v1;
    v11[0] = v2;
    v11[1] = &cmark_strbuf__initbuf;
    v12 = 0;
    for (i = cmark_iter_next(v3); i != 1; i = cmark_iter_next(v3))
    {
      if (i == 2)
      {
        v5 = *(v3 + 24);
        if (*(v5 + 100) == 49153)
        {
          v6 = *(v5 + 24);
          if (v6)
          {
            if (*(v6 + 100) == 49153)
            {
              cmark_strbuf_clear(v11);
              v7 = (v5 + 144);
              cmark_strbuf_put(v11, *(v5 + 144), *(v5 + 152));
              v8 = *(v5 + 24);
              if (v8)
              {
                do
                {
                  if (*(v8 + 100) != 49153)
                  {
                    break;
                  }

                  cmark_iter_next(v3);
                  cmark_strbuf_put(v11, *(v8 + 144), *(v8 + 152));
                  *(v5 + 92) = *(v8 + 92);
                  v9 = *(v8 + 24);
                  cmark_node_free(v8);
                  v8 = v9;
                }

                while (v9);
              }

              if (*(v5 + 156))
              {
                (*(*v3 + 16))(*v7);
              }

              *v7 = 0;
              *(v5 + 152) = 0;
              v10 = HIDWORD(v12);
              *(v5 + 144) = cmark_strbuf_detach(v11);
              *(v5 + 152) = v10 | 0x100000000;
            }
          }
        }
      }
    }

    cmark_strbuf_free(v11);
    return (*(*v3 + 16))(v3);
  }

  return result;
}

uint64_t cmark_inlines_remove_special_character(uint64_t result, unsigned int a2, int a3)
{
  *(*(result + 168) + a2) = 0;
  if (a3)
  {
    *(*(result + 160) + a2) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 8);
    if (result != &cmark_strbuf__initbuf)
    {
      result = (*(*v1 + 16))();
    }

    v1[1] = &cmark_strbuf__initbuf;
    v1[2] = 0;
  }

  return result;
}

void *postprocess(uint64_t a1, uint64_t (***a2)(uint64_t, uint64_t), void *a3)
{
  cmark_consolidate_text_nodes(a3);
  v53 = a3;
  v4 = cmark_iter_new(a3);
  v55 = cmark_iter_next(v4);
  if (v55 == 1)
  {
    goto LABEL_2;
  }

  v6 = 0;
  v54 = v4;
LABEL_4:
  v7 = v55;
  v56 = v6;
  do
  {
    node = cmark_iter_get_node(v4);
    v9 = node;
    if (v6)
    {
      if (v55 == 3)
      {
        v6 = *(node + 100) != 49161;
        goto LABEL_84;
      }

LABEL_83:
      v6 = 1;
LABEL_84:
      v55 = cmark_iter_next(v4);
      if (v55 == 1)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v7 != 2)
    {
      goto LABEL_79;
    }

    v10 = *(node + 100);
    if (v10 != 49153)
    {
      if (v10 != 49161)
      {
        goto LABEL_79;
      }

      goto LABEL_83;
    }

    v11 = *(node + 144);
    v12 = *(node + 152);
    v57 = *(node + 156);
    *(node + 152) = v12;
    if (!v12)
    {
      v49 = 1;
      goto LABEL_75;
    }

    v58 = node;
    v13 = 0;
    v14 = 0;
    v15 = v12;
    v62 = v11 + 1;
    v63 = v11 - 1;
    v64 = v11;
    do
    {
      v16 = v11 + v13;
      v17 = (v11 + v13 + v14);
      v18 = memchr(v17, 64, v15 - v14);
      if (!v18)
      {
        break;
      }

      v19 = v18 - v17;
      if (v18 == v17)
      {
LABEL_51:
        v14 += v19 + 1;
        continue;
      }

      v71 = 0;
      v73 = 0;
      v20 = v63 + v13;
      v66 = v15 - 1;
      v67 = v13;
      v65 = v62 + v13;
      v72 = 1;
      v69 = v15;
      v60 = v63 + v13;
      v61 = v11 + v13;
LABEL_15:
      v21 = 0;
      v22 = (v16 + v14 + v19);
      v23 = v20 + v14;
      while (1)
      {
        v24 = *(v23 + v19);
        if (!cmark_isalnum(v24) && !memchr(".+-_", v24, 5uLL))
        {
          break;
        }

LABEL_27:
        --v23;
        if (v19 == ++v21)
        {
          v21 = v19;
          goto LABEL_29;
        }
      }

      if (v24 == 58 || v24 == 0)
      {
        if (validate_protocol("mailto:", v22, v21, v19))
        {
          v72 = 0;
        }

        else
        {
          if (!validate_protocol("xmpp:", v22, v21, v19))
          {
            goto LABEL_46;
          }

          v72 = 0;
          v71 = 1;
        }

        goto LABEL_27;
      }

LABEL_46:
      if (!v21)
      {
LABEL_50:
        v13 = v67;
        goto LABEL_51;
      }

LABEL_29:
      if (*v22 != 64)
      {
        postprocess_cold_1();
      }

      v26 = v14 + v19;
      v27 = v15 - (v14 + v19);
      if (v27 < 2)
      {
        v30 = 1;
LABEL_70:
        v14 = v30 + v26;
        v13 = v67;
        continue;
      }

      v68 = v14 + v19;
      v28 = v66 - v26;
      v29 = v65 + v19 + v14;
      v30 = 1;
      v19 = 0;
      while (2)
      {
        v31 = v19 + 1;
        v32 = *(v29 + v19);
        if (cmark_isalnum(v32))
        {
LABEL_33:
          ++v30;
          ++v19;
          if (v28 == v31)
          {
            v30 = v27;
            goto LABEL_52;
          }

          continue;
        }

        break;
      }

      if (v32 <= 0x2Eu)
      {
        if (v32 != 45)
        {
          if (v32 != 46)
          {
            goto LABEL_68;
          }

          if (v31 >= v27 - 1 || !cmark_isalnum(*(v29 + v19 + 1)))
          {
            goto LABEL_52;
          }

          ++v73;
        }

        goto LABEL_33;
      }

      switch(v32)
      {
        case '/':
          if ((v71 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_33;
        case '_':
          goto LABEL_33;
        case '@':
          v15 = v69;
          v14 = v68 + 1;
          v11 = v64;
          v20 = v60;
          v16 = v61;
          if (v19)
          {
            goto LABEL_15;
          }

          goto LABEL_50;
      }

LABEL_68:
      v30 = v19 + 1;
LABEL_52:
      v11 = v64;
      v26 = v68;
      if (v30 < 2)
      {
        v15 = v69;
        goto LABEL_70;
      }

      v15 = v69;
      if (!v73)
      {
        goto LABEL_70;
      }

      v33 = v68 + v67;
      v34 = v64 + v30 + v68 + v67;
      if (!cmark_isalpha(*(v34 - 1)) && *(v34 - 1) != 46)
      {
        v26 = v68;
        goto LABEL_70;
      }

      v35 = autolink_delim(v22, v30);
      if (v35)
      {
        v36 = v35;
        v37 = cmark_node_new_with_mem(0xC009u, *a2);
        v74[1] = 0;
        v75 = 0;
        v74[0] = 0;
        cmark_strbuf_init(*a2, v74, 10);
        if (v72)
        {
          cmark_strbuf_puts(v74, "mailto:");
        }

        v38 = &v22[-v21];
        v39 = v36 + v21;
        cmark_strbuf_put(v74, v38, v36 + v21);
        v40 = HIDWORD(v75);
        v37[18] = cmark_strbuf_detach(v74);
        v37[19] = v40 | 0x100000000;
        v41 = cmark_node_new_with_mem(0xC001u, *a2);
        v42 = (**a2)((((v36 + v21) << 32) + 0x100000000) >> 32, 1);
        v43 = v42;
        if (v36 + v21 >= 1)
        {
          memcpy(v42, (v64 + v33 - v21), v39);
        }

        v43[v39] = 0;
        v41[18] = v43;
        v41[19] = v39 | 0x100000000;
        cmark_node_append_child(v37, v41);
        cmark_node_insert_after(v58, v37);
        v44 = cmark_node_new_with_mem(0xC001u, *a2);
        v45 = v36 + v68;
        v70 = v69 - (v36 + v68);
        v44[18] = v64 + v36 + v33;
        v44[19] = v70;
        cmark_node_insert_after(v37, v44);
        *(v58 + 144) = v64 + v67;
        *(v58 + 152) = (v68 - v21);
        v46 = (**a2)(v68 - v21 + 1, 1);
        v47 = v46;
        v48 = *(v58 + 152);
        v11 = v64;
        if (v48 >= 1)
        {
          memcpy(v46, *(v58 + 144), v48);
          LODWORD(v48) = *(v58 + 152);
        }

        v14 = 0;
        v47[v48] = 0;
        *(v58 + 144) = v47;
        v13 = v45 + v67;
        *(v58 + 156) = 1;
        v58 = v44;
        v15 = v70;
      }

      else
      {
        v13 = v67;
        v14 = v68 + 1;
      }
    }

    while (v14 < v15);
    v9 = v58;
    if (*(v58 + 156))
    {
      postprocess_cold_2();
    }

    v49 = *(v58 + 152) + 1;
    v4 = v54;
    v6 = v56;
LABEL_75:
    v50 = (**a2)(v49, 1);
    v51 = v50;
    v52 = *(v9 + 152);
    if (v52 >= 1)
    {
      memcpy(v50, *(v9 + 144), v52);
      LODWORD(v52) = *(v9 + 152);
    }

    v51[v52] = 0;
    *(v9 + 144) = v51;
    *(v9 + 156) = 1;
    if (v57)
    {
      ((*a2)[2])(v11);
    }

LABEL_79:
    v7 = cmark_iter_next(v4);
  }

  while (v7 != 1);
LABEL_2:
  cmark_iter_free(v4);
  return v53;
}

uint64_t cmark_map_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      do
      {
        v3 = *v2;
        (*(v1 + 48))(v1);
        v2 = v3;
      }

      while (v3);
    }

    (*(*v1 + 16))(*(v1 + 16), v2);
    v4 = *(*v1 + 16);

    return v4(v1);
  }

  return result;
}

uint64_t cmark_node_get_type(uint64_t result)
{
  if (result)
  {
    return *(result + 100);
  }

  return result;
}

_BYTE *cmark_node_get_literal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(a1 + 100);
  if (v3 > 0xC000)
  {
    v4 = v3 - 49153;
    v5 = v4 > 0xA;
    v6 = (1 << v4) & 0x419;
    if (v5 || v6 == 0)
    {
      return v2;
    }

LABEL_16:
    if (*(a1 + 156))
    {
      return *(a1 + 144);
    }

    v9 = (**a1)(*(a1 + 152) + 1, 1);
    v2 = v9;
    v10 = *(a1 + 152);
    if (v10 >= 1)
    {
      memcpy(v9, *(a1 + 144), v10);
      LODWORD(v10) = *(a1 + 152);
    }

    v2[v10] = 0;
    *(a1 + 144) = v2;
    *(a1 + 156) = 1;
    return v2;
  }

  if (v3 != 32773)
  {
    if (v3 != 32774 && v3 != 32779)
    {
      return v2;
    }

    goto LABEL_16;
  }

  if (*(a1 + 172))
  {
    return *(a1 + 160);
  }

  v11 = (**a1)(*(a1 + 168) + 1, 1);
  v2 = v11;
  v12 = *(a1 + 168);
  if (v12 >= 1)
  {
    memcpy(v11, *(a1 + 160), v12);
    LODWORD(v12) = *(a1 + 168);
  }

  v2[v12] = 0;
  *(a1 + 160) = v2;
  *(a1 + 172) = 1;
  return v2;
}

uint64_t cmark_node_free(void *a1)
{
  v1 = a1;
  S_node_unlink(a1);
  v1[3] = 0;
  do
  {
    cmark_strbuf_free(v1);
    if (v1[8])
    {
      v2 = v1[9];
      if (v2)
      {
        v2(*v1);
      }
    }

    if (v1[18])
    {
      v3 = v1[14];
      if (v3)
      {
        v4 = *(v3 + 168);
        if (v4)
        {
          v5 = *v1;
          v4();
        }
      }
    }

    free_node_as(v1);
    v6 = v1[7];
    v7 = v1[3];
    if (v6)
    {
      *(v6 + 24) = v7;
      v7 = v1[6];
      v1[3] = v7;
    }

    result = (*(*v1 + 16))(v1);
    v1 = v7;
  }

  while (v7);
  return result;
}

void *S_node_unlink(void *result)
{
  if (result)
  {
    v1 = result[3];
    v2 = result[4];
    if (v2)
    {
      *(v2 + 24) = v1;
    }

    if (v1)
    {
      *(v1 + 32) = v2;
    }

    v3 = result[5];
    if (v3)
    {
      if (*(v3 + 48) == result)
      {
        *(v3 + 48) = v1;
      }

      if (*(v3 + 56) == result)
      {
        *(v3 + 56) = result[4];
      }
    }
  }

  return result;
}

uint64_t free_node_as(uint64_t result)
{
  v1 = result;
  v2 = *(result + 100);
  if (v2 > 0xC005)
  {
    if (*(result + 100) <= 0xC00Au)
    {
      if (v2 - 49161 < 2)
      {
        goto LABEL_10;
      }

      v3 = 49158;
LABEL_9:
      if (v2 != v3)
      {
        return result;
      }

LABEL_10:
      if (*(result + 156))
      {
        result = (*(*result + 16))(*(result + 144));
      }

      *(v1 + 144) = 0;
      *(v1 + 152) = 0;
      v4 = (v1 + 160);
      if (!*(v1 + 172))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v2 == 49163 || v2 == 49164)
    {
LABEL_24:
      v4 = (result + 144);
      if (!*(result + 156))
      {
LABEL_26:
        *v4 = 0;
        v4[1] = 0;
        return result;
      }

LABEL_25:
      result = (*(*v1 + 16))(*v4);
      goto LABEL_26;
    }
  }

  else
  {
    if (*(result + 100) <= 0x800Au)
    {
      if (v2 == 32773)
      {
        goto LABEL_10;
      }

      if (v2 != 32774)
      {
        v3 = 32775;
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    if (v2 - 49156 < 2 || v2 == 32779 || v2 == 49153)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t cmark_parser_free(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 144))
  {
    (*(v2 + 16))(*(a1 + 168));
    (*(v2 + 16))(*(a1 + 160));
  }

  cmark_parser_dispose(a1);
  cmark_strbuf_free(a1 + 64);
  cmark_strbuf_free(a1 + 96);
  cmark_llist_free(*a1, *(a1 + 136));
  cmark_llist_free(*a1, *(a1 + 144));
  v3 = *(v2 + 16);

  return v3(a1);
}

uint64_t cmark_strbuf_detach(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return (**a1)(1, 1);
  }

  v1 = *(a1 + 8);
  *(a1 + 8) = &cmark_strbuf__initbuf;
  *(a1 + 16) = 0;
  return v1;
}

_DWORD *cmark_utf8proc_check(_DWORD *result, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = v6;
    while (1)
    {
      v9 = (a2 + v8);
      v10 = *v9;
      if (v10 < 1)
      {
        break;
      }

      ++v8;
LABEL_12:
      if (v8 >= a3)
      {
        v15 = 0;
        goto LABEL_43;
      }
    }

    v11 = *v9;
    if ((v10 & 0x80) == 0)
    {
      v15 = 1;
      v7 = 1;
      goto LABEL_43;
    }

    v12 = *v9;
    v7 = utf8proc_utf8class[v12];
    if (!utf8proc_utf8class[v12])
    {
LABEL_38:
      v7 = -1;
      goto LABEL_42;
    }

    if (a3 - v8 < v7)
    {
      v7 = v8 - a3;
      goto LABEL_10;
    }

    if (v7 == 4)
    {
      v14 = v9[1];
      if ((v14 & 0xC0) != 0x80)
      {
        goto LABEL_38;
      }

      if ((v9[2] & 0xC0) != 0x80)
      {
LABEL_40:
        v7 = -2;
        goto LABEL_42;
      }

      if ((v9[3] & 0xC0) != 0x80)
      {
        goto LABEL_41;
      }

      if (v11 == 240)
      {
        if (v14 < 0x90)
        {
          v7 = -4;
          goto LABEL_42;
        }
      }

      else if (v11 >= 0xF4)
      {
        v7 = -4;
        if (v11 != 244 || v14 > 0x8F)
        {
          goto LABEL_42;
        }
      }

      v7 = 4;
      goto LABEL_11;
    }

    if (utf8proc_utf8class[v12] != 3)
    {
      if (utf8proc_utf8class[v12] == 2)
      {
        if ((v9[1] & 0xC0) != 0x80)
        {
          goto LABEL_38;
        }

        if (v11 < 0xC2)
        {
          goto LABEL_40;
        }

        v7 = 2;
        goto LABEL_11;
      }

LABEL_10:
      if (v7 < 0)
      {
        goto LABEL_42;
      }

LABEL_11:
      v8 += v7;
      goto LABEL_12;
    }

    v13 = v9[1];
    if ((v13 & 0xC0) != 0x80)
    {
      goto LABEL_38;
    }

    if ((v9[2] & 0xC0) != 0x80)
    {
      goto LABEL_40;
    }

    if (v11 == 237)
    {
      if (v13 > 0x9F)
      {
        goto LABEL_41;
      }

LABEL_37:
      v7 = 3;
      goto LABEL_11;
    }

    if (v11 != 224 || v13 >= 0xA0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v7 = -3;
LABEL_42:
    v7 = -v7;
    v15 = 1;
LABEL_43:
    if (v8 > v6)
    {
      result = cmark_strbuf_put(v5, (a2 + v6), v8 - v6);
    }

    if (!v15)
    {
      break;
    }

    result = cmark_strbuf_put(v5, &encode_unknown_repl, 3);
    v6 = v7 + v8;
  }

  while (v7 + v8 < a3);
  return result;
}

uint64_t cmark_utf8proc_iterate(unsigned __int8 *a1, int a2, int *a3)
{
  v3 = 0xFFFFFFFFLL;
  *a3 = -1;
  if (a2)
  {
    v4 = *a1;
    v5 = utf8proc_utf8class[*a1];
    if (!utf8proc_utf8class[*a1] || (a2 & 0x80000000) == 0 && v5 > a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 2)
    {
LABEL_9:
      if ((v5 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v6 = 1;
      while ((a1[v6] & 0xC0) == 0x80)
      {
        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      v5 = -v6;
      if ((v5 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v3 = 0xFFFFFFFFLL;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = v4 & 0xF;
        v9 = (v8 << 12) | ((a1[1] & 0x3F) << 6);
        if (v9 >= 0x800)
        {
          v4 = v9 | a1[2] & 0x3F;
          if (v8 > 0xD || v9 >> 11 <= 0x1A)
          {
            goto LABEL_21;
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (v5 == 4)
      {
        v7 = ((v4 & 7) << 18) | ((a1[1] & 0x3F) << 12);
        if ((v7 - 1114112) >= 0xFFF00000)
        {
          v4 = a1[3] & 0x3F | ((a1[2] & 0x3F) << 6) | v7;
          goto LABEL_21;
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v5 == 1)
      {
LABEL_21:
        *a3 = v4;
        return v5;
      }

      if (v5 == 2)
      {
        if ((v4 & 0x1Fu) >= 2)
        {
          v4 = a1[1] & 0x3F | ((v4 & 0x1F) << 6);
          goto LABEL_21;
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return v3;
}

_DWORD *cmark_utf8proc_encode_char(unsigned int a1, _DWORD *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    cmark_utf8proc_encode_char_cold_1();
  }

  if (a1 <= 0x7F)
  {
    v5 = a1;
LABEL_11:
    v2 = 1;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  if (a1 <= 0x7FF)
  {
    v5 = (a1 >> 6) | 0xC0;
    v6 = a1 & 0x3F | 0x80;
    v2 = 2;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  if (a1 == 65534)
  {
    v3 = -2;
    goto LABEL_10;
  }

  if (a1 == 0xFFFF)
  {
    v3 = -1;
LABEL_10:
    v5 = v3;
    goto LABEL_11;
  }

  if (!HIWORD(a1))
  {
    v5 = (a1 >> 12) | 0xE0;
    v6 = (a1 >> 6) & 0x3F | 0x80;
    v7 = a1 & 0x3F | 0x80;
    v2 = 3;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v5 = (a1 >> 18) | 0xF0;
    v6 = (a1 >> 12) & 0x3F | 0x80;
    v7 = (a1 >> 6) & 0x3F | 0x80;
    v8 = a1 & 0x3F | 0x80;
    v2 = 4;
    return cmark_strbuf_put(a2, &v5, v2);
  }

  return cmark_strbuf_put(a2, &encode_unknown_repl, 3);
}

_DWORD *cmark_utf8proc_case_fold(_DWORD *result, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v119 = v3;
    v120 = v4;
    v5 = a3;
    v7 = result;
    v117 = 0;
    do
    {
      v8 = cmark_utf8proc_iterate(a2, v5, &v117);
      if ((v8 & 0x80000000) != 0)
      {
        result = cmark_strbuf_put(v7, &encode_unknown_repl, 3);
        v9 = 1;
      }

      else
      {
        v9 = v8;
        if (v117 > 8485)
        {
          if (v117 <= 43887)
          {
            if (v117 > 11263)
            {
              switch(v117)
              {
                case 11264:
                  v16 = -20254;
                  goto LABEL_1050;
                case 11265:
                  v56 = -20254;
                  goto LABEL_1322;
                case 11266:
                  v21 = -20254;
                  goto LABEL_1320;
                case 11267:
                  v58 = -20254;
                  goto LABEL_1413;
                case 11268:
                  v59 = -20254;
                  goto LABEL_1308;
                case 11269:
                  v57 = -20254;
                  goto LABEL_1447;
                case 11270:
                  v50 = -20254;
                  goto LABEL_1298;
                case 11271:
                  v54 = -20254;
                  goto LABEL_1457;
                case 11272:
                  v51 = -20254;
LABEL_1312:
                  LOWORD(v118) = v51;
                  v49 = -72;
                  goto LABEL_1521;
                case 11273:
                  v52 = -20254;
                  goto LABEL_1409;
                case 11274:
                  v53 = -20254;
LABEL_1415:
                  LOWORD(v118) = v53;
                  v49 = -70;
                  goto LABEL_1521;
                case 11275:
                  v55 = -20254;
                  goto LABEL_1419;
                case 11276:
                  v46 = -20254;
LABEL_1389:
                  LOWORD(v118) = v46;
                  v49 = -68;
                  goto LABEL_1521;
                case 11277:
                  v60 = -20254;
                  goto LABEL_1431;
                case 11278:
                  v48 = -20254;
LABEL_103:
                  LOWORD(v118) = v48;
                  v49 = -66;
                  goto LABEL_1521;
                case 11279:
                  v61 = -20254;
                  goto LABEL_1421;
                case 11280:
                  v17 = -19998;
LABEL_1285:
                  LOWORD(v118) = v17;
                  v49 = 0x80;
                  goto LABEL_1521;
                case 11281:
                  v20 = -19998;
                  goto LABEL_1501;
                case 11282:
                  v78 = -19998;
LABEL_1288:
                  LOWORD(v118) = v78;
                  v49 = -126;
                  goto LABEL_1521;
                case 11283:
                  v84 = -19998;
                  goto LABEL_1492;
                case 11284:
                  v47 = -19998;
LABEL_1291:
                  LOWORD(v118) = v47;
                  v49 = -124;
                  goto LABEL_1521;
                case 11285:
                  v82 = -19998;
                  goto LABEL_1496;
                case 11286:
                  v81 = -19998;
LABEL_1275:
                  LOWORD(v118) = v81;
                  v49 = -122;
                  goto LABEL_1521;
                case 11287:
                  v83 = -19998;
                  goto LABEL_1494;
                case 11288:
                  v80 = -19998;
LABEL_1273:
                  LOWORD(v118) = v80;
                  v49 = -120;
                  goto LABEL_1521;
                case 11289:
                  v86 = -19998;
                  goto LABEL_1478;
                case 11290:
                  v87 = -19998;
LABEL_1318:
                  LOWORD(v118) = v87;
                  v49 = -118;
                  goto LABEL_1521;
                case 11291:
                  v62 = -19998;
                  goto LABEL_1476;
                case 11292:
                  v85 = -19998;
LABEL_1453:
                  LOWORD(v118) = v85;
                  v49 = -116;
                  goto LABEL_1521;
                case 11293:
                  v79 = -19998;
                  goto LABEL_1518;
                case 11294:
                  v45 = -19998;
                  goto LABEL_1346;
                case 11295:
                  v88 = -19998;
                  goto LABEL_1508;
                case 11296:
                  v13 = -19998;
LABEL_1339:
                  LOWORD(v118) = v13;
                  v49 = -112;
                  goto LABEL_1521;
                case 11297:
                  v34 = -19998;
                  goto LABEL_1485;
                case 11298:
                  v30 = -19998;
LABEL_1269:
                  LOWORD(v118) = v30;
                  v49 = -110;
                  goto LABEL_1521;
                case 11299:
                  v32 = -19998;
                  goto LABEL_1510;
                case 11300:
                  v25 = -19998;
LABEL_1293:
                  LOWORD(v118) = v25;
                  v49 = -108;
                  goto LABEL_1521;
                case 11301:
                  v36 = -19998;
                  goto LABEL_1490;
                case 11302:
                  v39 = -19998;
LABEL_1332:
                  LOWORD(v118) = v39;
                  v49 = -106;
                  goto LABEL_1521;
                case 11303:
                  v33 = -19998;
                  goto LABEL_1512;
                case 11304:
                  v42 = -19998;
LABEL_1263:
                  LOWORD(v118) = v42;
                  v49 = -104;
                  goto LABEL_1521;
                case 11305:
                  v27 = -19998;
                  goto LABEL_1487;
                case 11306:
                  v41 = -19998;
LABEL_1296:
                  LOWORD(v118) = v41;
                  v49 = -102;
                  goto LABEL_1521;
                case 11307:
                  v24 = -19998;
                  goto LABEL_1520;
                case 11308:
                  v26 = -19998;
LABEL_1257:
                  LOWORD(v118) = v26;
                  v49 = -100;
                  goto LABEL_1521;
                case 11309:
                  v38 = -19998;
                  goto LABEL_1503;
                case 11310:
                  v23 = -19998;
LABEL_1282:
                  LOWORD(v118) = v23;
                  v49 = -98;
                  goto LABEL_1521;
                case 11311:
                case 11312:
                case 11313:
                case 11314:
                case 11315:
                case 11316:
                case 11317:
                case 11318:
                case 11319:
                case 11320:
                case 11321:
                case 11322:
                case 11323:
                case 11324:
                case 11325:
                case 11326:
                case 11327:
                case 11328:
                case 11329:
                case 11330:
                case 11331:
                case 11332:
                case 11333:
                case 11334:
                case 11335:
                case 11336:
                case 11337:
                case 11338:
                case 11339:
                case 11340:
                case 11341:
                case 11342:
                case 11343:
                case 11344:
                case 11345:
                case 11346:
                case 11347:
                case 11348:
                case 11349:
                case 11350:
                case 11351:
                case 11352:
                case 11353:
                case 11354:
                case 11355:
                case 11356:
                case 11357:
                case 11358:
                case 11359:
                case 11361:
                case 11365:
                case 11366:
                case 11368:
                case 11370:
                case 11372:
                case 11377:
                case 11379:
                case 11380:
                case 11382:
                case 11383:
                case 11384:
                case 11385:
                case 11386:
                case 11387:
                case 11388:
                case 11389:
                case 11393:
                case 11395:
                case 11397:
                case 11399:
                case 11401:
                case 11403:
                case 11405:
                case 11407:
                case 11409:
                case 11411:
                case 11413:
                case 11415:
                case 11417:
                case 11419:
                case 11421:
                case 11423:
                case 11425:
                case 11427:
                case 11429:
                case 11431:
                case 11433:
                case 11435:
                case 11437:
                case 11439:
                case 11441:
                case 11443:
                case 11445:
                case 11447:
                case 11449:
                case 11451:
                case 11453:
                case 11455:
                case 11457:
                case 11459:
                case 11461:
                case 11463:
                case 11465:
                case 11467:
                case 11469:
                case 11471:
                case 11473:
                case 11475:
                case 11477:
                case 11479:
                case 11481:
                case 11483:
                case 11485:
                case 11487:
                case 11489:
                case 11491:
                case 11492:
                case 11493:
                case 11494:
                case 11495:
                case 11496:
                case 11497:
                case 11498:
                case 11500:
                case 11502:
                case 11503:
                case 11504:
                case 11505:
                  goto LABEL_199;
                case 11360:
                  v12 = -19998;
                  goto LABEL_1498;
                case 11362:
                  v10 = -21559;
                  goto LABEL_988;
                case 11363:
                  v60 = -18975;
                  goto LABEL_1431;
                case 11364:
                  v10 = -16951;
                  goto LABEL_988;
                case 11367:
                  v29 = -19998;
LABEL_1305:
                  LOWORD(v118) = v29;
                  v49 = -88;
                  goto LABEL_1521;
                case 11369:
                  v113 = -19998;
LABEL_1362:
                  LOWORD(v118) = v113;
                  v49 = -86;
                  goto LABEL_1521;
                case 11371:
                  v111 = -19998;
                  goto LABEL_1381;
                case 11373:
                  v10 = -28215;
                  goto LABEL_988;
                case 11374:
                  v10 = -20023;
                  goto LABEL_988;
                case 11375:
                  v10 = -28471;
                  goto LABEL_988;
                case 11376:
                  v10 = -27959;
                  goto LABEL_988;
                case 11378:
                  v58 = -19998;
                  goto LABEL_1413;
                case 11381:
                  v50 = -19998;
LABEL_1298:
                  LOWORD(v118) = v50;
                  v49 = -74;
                  goto LABEL_1521;
                case 11390:
                  v10 = -16440;
                  goto LABEL_988;
                case 11391:
                  v10 = -32567;
                  goto LABEL_988;
                case 11392:
                  v20 = -19742;
                  goto LABEL_1501;
                case 11394:
                  v84 = -19742;
                  goto LABEL_1492;
                case 11396:
                  v82 = -19742;
                  goto LABEL_1496;
                case 11398:
                  v83 = -19742;
                  goto LABEL_1494;
                case 11400:
                  v86 = -19742;
                  goto LABEL_1478;
                case 11402:
                  v62 = -19742;
                  goto LABEL_1476;
                case 11404:
                  v79 = -19742;
                  goto LABEL_1518;
                case 11406:
                  v88 = -19742;
                  goto LABEL_1508;
                case 11408:
                  v34 = -19742;
                  goto LABEL_1485;
                case 11410:
                  v32 = -19742;
                  goto LABEL_1510;
                case 11412:
                  v36 = -19742;
                  goto LABEL_1490;
                case 11414:
                  v33 = -19742;
                  goto LABEL_1512;
                case 11416:
                  v27 = -19742;
                  goto LABEL_1487;
                case 11418:
                  v24 = -19742;
                  goto LABEL_1520;
                case 11420:
                  v38 = -19742;
                  goto LABEL_1503;
                case 11422:
                  v31 = -19742;
                  goto LABEL_1505;
                case 11424:
                  v12 = -19742;
                  goto LABEL_1498;
                case 11426:
                  v18 = -19742;
                  goto LABEL_1514;
                case 11428:
                  v37 = -19742;
LABEL_1483:
                  LOWORD(v118) = v37;
                  v49 = -91;
                  goto LABEL_1521;
                case 11430:
                  v44 = -19742;
LABEL_1468:
                  LOWORD(v118) = v44;
                  v49 = -89;
                  goto LABEL_1521;
                case 11432:
                  v28 = -19742;
LABEL_1472:
                  LOWORD(v118) = v28;
                  v49 = -87;
                  goto LABEL_1521;
                case 11434:
                  v92 = -19742;
LABEL_1516:
                  LOWORD(v118) = v92;
                  v49 = -85;
                  goto LABEL_1521;
                case 11436:
                  v77 = -19742;
LABEL_1481:
                  LOWORD(v118) = v77;
                  v49 = -83;
                  goto LABEL_1521;
                case 11438:
                  v91 = -19742;
LABEL_1424:
                  LOWORD(v118) = v91;
                  v49 = -81;
                  goto LABEL_1521;
                case 11440:
                  v56 = -19742;
                  goto LABEL_1322;
                case 11442:
                  v58 = -19742;
                  goto LABEL_1413;
                case 11444:
                  v57 = -19742;
                  goto LABEL_1447;
                case 11446:
                  v54 = -19742;
LABEL_1457:
                  LOWORD(v118) = v54;
                  v49 = -73;
                  goto LABEL_1521;
                case 11448:
                  v52 = -19742;
LABEL_1409:
                  LOWORD(v118) = v52;
                  v49 = -71;
                  goto LABEL_1521;
                case 11450:
                  v55 = -19742;
LABEL_1419:
                  LOWORD(v118) = v55;
                  v49 = -69;
                  goto LABEL_1521;
                case 11452:
                  v60 = -19742;
LABEL_1431:
                  LOWORD(v118) = v60;
                  v49 = -67;
                  goto LABEL_1521;
                case 11454:
                  v61 = -19742;
LABEL_1421:
                  LOWORD(v118) = v61;
                  v49 = -65;
                  goto LABEL_1521;
                case 11456:
                  v20 = -19486;
LABEL_1501:
                  LOWORD(v118) = v20;
                  v49 = -127;
                  goto LABEL_1521;
                case 11458:
                  v84 = -19486;
LABEL_1492:
                  LOWORD(v118) = v84;
                  v49 = -125;
                  goto LABEL_1521;
                case 11460:
                  v82 = -19486;
LABEL_1496:
                  LOWORD(v118) = v82;
                  v49 = -123;
                  goto LABEL_1521;
                case 11462:
                  v83 = -19486;
LABEL_1494:
                  LOWORD(v118) = v83;
                  v49 = -121;
                  goto LABEL_1521;
                case 11464:
                  v86 = -19486;
LABEL_1478:
                  LOWORD(v118) = v86;
                  v49 = -119;
                  goto LABEL_1521;
                case 11466:
                  v62 = -19486;
                  goto LABEL_1476;
                case 11468:
                  v79 = -19486;
LABEL_1518:
                  LOWORD(v118) = v79;
                  v49 = -115;
                  goto LABEL_1521;
                case 11470:
                  v88 = -19486;
LABEL_1508:
                  LOWORD(v118) = v88;
                  v49 = -113;
                  goto LABEL_1521;
                case 11472:
                  v34 = -19486;
LABEL_1485:
                  LOWORD(v118) = v34;
                  v49 = -111;
                  goto LABEL_1521;
                case 11474:
                  v32 = -19486;
LABEL_1510:
                  LOWORD(v118) = v32;
                  v49 = -109;
                  goto LABEL_1521;
                case 11476:
                  v36 = -19486;
LABEL_1490:
                  LOWORD(v118) = v36;
                  v49 = -107;
                  goto LABEL_1521;
                case 11478:
                  v33 = -19486;
LABEL_1512:
                  LOWORD(v118) = v33;
                  v49 = -105;
                  goto LABEL_1521;
                case 11480:
                  v27 = -19486;
LABEL_1487:
                  LOWORD(v118) = v27;
                  v49 = -103;
                  goto LABEL_1521;
                case 11482:
                  v24 = -19486;
LABEL_1520:
                  LOWORD(v118) = v24;
                  v49 = -101;
                  goto LABEL_1521;
                case 11484:
                  v38 = -19486;
LABEL_1503:
                  LOWORD(v118) = v38;
                  v49 = -99;
                  goto LABEL_1521;
                case 11486:
                  v31 = -19486;
LABEL_1505:
                  LOWORD(v118) = v31;
                  v49 = -97;
                  goto LABEL_1521;
                case 11488:
                  v12 = -19486;
LABEL_1498:
                  LOWORD(v118) = v12;
                  v49 = -95;
                  goto LABEL_1521;
                case 11490:
                  v18 = -19486;
LABEL_1514:
                  LOWORD(v118) = v18;
                  v49 = -93;
                  goto LABEL_1521;
                case 11499:
                  v111 = -19486;
LABEL_1381:
                  LOWORD(v118) = v111;
                  v49 = -84;
                  goto LABEL_1521;
                case 11501:
                  LOWORD(v118) = -19486;
                  v49 = -82;
                  goto LABEL_1521;
                case 11506:
                  v58 = -19486;
                  goto LABEL_1413;
                default:
                  switch(v117)
                  {
                    case 42786:
                      v18 = -25366;
                      goto LABEL_1514;
                    case 42787:
                    case 42789:
                    case 42791:
                    case 42793:
                    case 42795:
                    case 42797:
                    case 42799:
                    case 42800:
                    case 42801:
                    case 42803:
                    case 42805:
                    case 42807:
                    case 42809:
                    case 42811:
                    case 42813:
                    case 42815:
                    case 42817:
                    case 42819:
                    case 42821:
                    case 42823:
                    case 42825:
                    case 42827:
                    case 42829:
                    case 42831:
                    case 42833:
                    case 42835:
                    case 42837:
                    case 42839:
                    case 42841:
                    case 42843:
                    case 42845:
                    case 42847:
                    case 42849:
                    case 42851:
                    case 42853:
                    case 42855:
                    case 42857:
                    case 42859:
                    case 42861:
                    case 42863:
                    case 42864:
                    case 42865:
                    case 42866:
                    case 42867:
                    case 42868:
                    case 42869:
                    case 42870:
                    case 42871:
                    case 42872:
                    case 42874:
                    case 42876:
                    case 42879:
                    case 42881:
                    case 42883:
                    case 42885:
                    case 42887:
                    case 42888:
                    case 42889:
                    case 42890:
                    case 42892:
                    case 42894:
                    case 42895:
                    case 42897:
                    case 42899:
                    case 42900:
                    case 42901:
                    case 42903:
                    case 42905:
                    case 42907:
                    case 42909:
                    case 42911:
                    case 42913:
                    case 42915:
                    case 42917:
                    case 42919:
                    case 42921:
                    case 42927:
                    case 42933:
                      goto LABEL_199;
                    case 42788:
                      v37 = -25366;
                      goto LABEL_1483;
                    case 42790:
                      v44 = -25366;
                      goto LABEL_1468;
                    case 42792:
                      v28 = -25366;
                      goto LABEL_1472;
                    case 42794:
                      v92 = -25366;
                      goto LABEL_1516;
                    case 42796:
                      v77 = -25366;
                      goto LABEL_1481;
                    case 42798:
                      v91 = -25366;
                      goto LABEL_1424;
                    case 42802:
                      v58 = -25366;
                      goto LABEL_1413;
                    case 42804:
                      v57 = -25366;
                      goto LABEL_1447;
                    case 42806:
                      v54 = -25366;
                      goto LABEL_1457;
                    case 42808:
                      v52 = -25366;
                      goto LABEL_1409;
                    case 42810:
                      v55 = -25366;
                      goto LABEL_1419;
                    case 42812:
                      v60 = -25366;
                      goto LABEL_1431;
                    case 42814:
                      v61 = -25366;
                      goto LABEL_1421;
                    case 42816:
                      v20 = -25110;
                      goto LABEL_1501;
                    case 42818:
                      v84 = -25110;
                      goto LABEL_1492;
                    case 42820:
                      v82 = -25110;
                      goto LABEL_1496;
                    case 42822:
                      v83 = -25110;
                      goto LABEL_1494;
                    case 42824:
                      v86 = -25110;
                      goto LABEL_1478;
                    case 42826:
                      v62 = -25110;
                      goto LABEL_1476;
                    case 42828:
                      v79 = -25110;
                      goto LABEL_1518;
                    case 42830:
                      v88 = -25110;
                      goto LABEL_1508;
                    case 42832:
                      v34 = -25110;
                      goto LABEL_1485;
                    case 42834:
                      v32 = -25110;
                      goto LABEL_1510;
                    case 42836:
                      v36 = -25110;
                      goto LABEL_1490;
                    case 42838:
                      v33 = -25110;
                      goto LABEL_1512;
                    case 42840:
                      v27 = -25110;
                      goto LABEL_1487;
                    case 42842:
                      v24 = -25110;
                      goto LABEL_1520;
                    case 42844:
                      v38 = -25110;
                      goto LABEL_1503;
                    case 42846:
                      v31 = -25110;
                      goto LABEL_1505;
                    case 42848:
                      v12 = -25110;
                      goto LABEL_1498;
                    case 42850:
                      v18 = -25110;
                      goto LABEL_1514;
                    case 42852:
                      v37 = -25110;
                      goto LABEL_1483;
                    case 42854:
                      v44 = -25110;
                      goto LABEL_1468;
                    case 42856:
                      v28 = -25110;
                      goto LABEL_1472;
                    case 42858:
                      v92 = -25110;
                      goto LABEL_1516;
                    case 42860:
                      v77 = -25110;
                      goto LABEL_1481;
                    case 42862:
                      v91 = -25110;
                      goto LABEL_1424;
                    case 42873:
                      v53 = -25110;
                      goto LABEL_1415;
                    case 42875:
                      v46 = -25110;
                      goto LABEL_1389;
                    case 42877:
                      v52 = -18975;
                      goto LABEL_1409;
                    case 42878:
                      v61 = -25110;
                      goto LABEL_1421;
                    case 42880:
                      v20 = -24854;
                      goto LABEL_1501;
                    case 42882:
                      v84 = -24854;
                      goto LABEL_1492;
                    case 42884:
                      v82 = -24854;
                      goto LABEL_1496;
                    case 42886:
                      v83 = -24854;
                      goto LABEL_1494;
                    case 42891:
                      v85 = -24854;
                      goto LABEL_1453;
                    case 42893:
                      v10 = -23095;
                      goto LABEL_988;
                    case 42896:
                      v34 = -24854;
                      goto LABEL_1485;
                    case 42898:
                      v32 = -24854;
                      goto LABEL_1510;
                    case 42902:
                      v33 = -24854;
                      goto LABEL_1512;
                    case 42904:
                      v27 = -24854;
                      goto LABEL_1487;
                    case 42906:
                      v24 = -24854;
                      goto LABEL_1520;
                    case 42908:
                      v38 = -24854;
                      goto LABEL_1503;
                    case 42910:
                      v31 = -24854;
                      goto LABEL_1505;
                    case 42912:
                      v12 = -24854;
                      goto LABEL_1498;
                    case 42914:
                      v18 = -24854;
                      goto LABEL_1514;
                    case 42916:
                      v37 = -24854;
                      goto LABEL_1483;
                    case 42918:
                      v44 = -24854;
                      goto LABEL_1468;
                    case 42920:
                      v28 = -24854;
                      goto LABEL_1472;
                    case 42922:
                      v10 = -22839;
                      goto LABEL_988;
                    case 42923:
                      v10 = -25399;
                      goto LABEL_988;
                    case 42924:
                      v10 = -24119;
                      goto LABEL_988;
                    case 42925:
                      v10 = -21303;
                      goto LABEL_988;
                    case 42926:
                      v10 = -21815;
                      goto LABEL_988;
                    case 42928:
                      v10 = -24886;
                      goto LABEL_988;
                    case 42929:
                      v10 = -30774;
                      goto LABEL_988;
                    case 42930:
                      v10 = -25142;
                      goto LABEL_988;
                    case 42931:
                      v32 = -21014;
                      goto LABEL_1510;
                    case 42932:
                      v57 = -24854;
                      goto LABEL_1447;
                    case 42934:
                      v54 = -24854;
                      goto LABEL_1457;
                    default:
                      switch(v117)
                      {
                        case 42560:
                          v20 = -26134;
                          goto LABEL_1501;
                        case 42562:
                          v84 = -26134;
                          goto LABEL_1492;
                        case 42564:
                          v82 = -26134;
                          goto LABEL_1496;
                        case 42566:
                          v83 = -26134;
                          goto LABEL_1494;
                        case 42568:
                          v86 = -26134;
                          goto LABEL_1478;
                        case 42570:
                          goto LABEL_134;
                        case 42572:
                          v79 = -26134;
                          goto LABEL_1518;
                        case 42574:
                          v88 = -26134;
                          goto LABEL_1508;
                        case 42576:
                          v34 = -26134;
                          goto LABEL_1485;
                        case 42578:
                          v32 = -26134;
                          goto LABEL_1510;
                        case 42580:
                          v36 = -26134;
                          goto LABEL_1490;
                        case 42582:
                          v33 = -26134;
                          goto LABEL_1512;
                        case 42584:
                          v27 = -26134;
                          goto LABEL_1487;
                        case 42586:
                          v24 = -26134;
                          goto LABEL_1520;
                        case 42588:
                          v38 = -26134;
                          goto LABEL_1503;
                        case 42590:
                          v31 = -26134;
                          goto LABEL_1505;
                        case 42592:
                          v12 = -26134;
                          goto LABEL_1498;
                        case 42594:
                          v18 = -26134;
                          goto LABEL_1514;
                        case 42596:
                          v37 = -26134;
                          goto LABEL_1483;
                        case 42598:
                          v44 = -26134;
                          goto LABEL_1468;
                        case 42600:
                          v28 = -26134;
                          goto LABEL_1472;
                        case 42602:
                          v92 = -26134;
                          goto LABEL_1516;
                        case 42604:
                          v77 = -26134;
                          goto LABEL_1481;
                        case 42624:
                          v20 = -25878;
                          goto LABEL_1501;
                        case 42626:
                          v84 = -25878;
                          goto LABEL_1492;
                        case 42628:
                          v82 = -25878;
                          goto LABEL_1496;
                        case 42630:
                          v83 = -25878;
                          goto LABEL_1494;
                        case 42632:
                          v86 = -25878;
                          goto LABEL_1478;
                        case 42634:
                          v62 = -25878;
                          goto LABEL_1476;
                        case 42636:
                          v79 = -25878;
                          goto LABEL_1518;
                        case 42638:
                          v88 = -25878;
                          goto LABEL_1508;
                        case 42640:
                          v34 = -25878;
                          goto LABEL_1485;
                        case 42642:
                          v32 = -25878;
                          goto LABEL_1510;
                        case 42644:
                          v36 = -25878;
                          goto LABEL_1490;
                        case 42646:
                          v33 = -25878;
                          goto LABEL_1512;
                        case 42648:
                          v27 = -25878;
                          goto LABEL_1487;
                        case 42650:
                          v24 = -25878;
                          goto LABEL_1520;
                        default:
                          goto LABEL_199;
                      }
                  }
              }
            }

            if (v117 > 9397)
            {
              switch(v117)
              {
                case 9398:
                  v13 = -27678;
                  goto LABEL_1339;
                case 9399:
                  v34 = -27678;
                  goto LABEL_1485;
                case 9400:
                  v30 = -27678;
                  goto LABEL_1269;
                case 9401:
                  v32 = -27678;
                  goto LABEL_1510;
                case 9402:
                  v25 = -27678;
                  goto LABEL_1293;
                case 9403:
                  v36 = -27678;
                  goto LABEL_1490;
                case 9404:
                  v39 = -27678;
                  goto LABEL_1332;
                case 9405:
                  v33 = -27678;
                  goto LABEL_1512;
                case 9406:
                  v42 = -27678;
                  goto LABEL_1263;
                case 9407:
                  v27 = -27678;
                  goto LABEL_1487;
                case 9408:
                  v41 = -27678;
                  goto LABEL_1296;
                case 9409:
                  v24 = -27678;
                  goto LABEL_1520;
                case 9410:
                  v26 = -27678;
                  goto LABEL_1257;
                case 9411:
                  v38 = -27678;
                  goto LABEL_1503;
                case 9412:
                  v23 = -27678;
                  goto LABEL_1282;
                case 9413:
                  v31 = -27678;
                  goto LABEL_1505;
                case 9414:
                  v11 = -27678;
LABEL_1151:
                  LOWORD(v118) = v11;
                  v49 = -96;
                  goto LABEL_1521;
                case 9415:
                  v12 = -27678;
                  goto LABEL_1498;
                case 9416:
                  v40 = -27678;
LABEL_1157:
                  LOWORD(v118) = v40;
                  v49 = -94;
                  goto LABEL_1521;
                case 9417:
                  v18 = -27678;
                  goto LABEL_1514;
                case 9418:
                  v35 = -27678;
LABEL_1208:
                  LOWORD(v118) = v35;
                  v49 = -92;
                  goto LABEL_1521;
                case 9419:
                  v37 = -27678;
                  goto LABEL_1483;
                case 9420:
                  v43 = -27678;
LABEL_1177:
                  LOWORD(v118) = v43;
                  v49 = -90;
                  goto LABEL_1521;
                case 9421:
                  v44 = -27678;
                  goto LABEL_1468;
                case 9422:
                  v29 = -27678;
                  goto LABEL_1305;
                case 9423:
                  v28 = -27678;
                  goto LABEL_1472;
                default:
                  goto LABEL_199;
              }
            }

            if (v117 > 8497)
            {
              switch(v117)
              {
                case 8544:
                  v16 = -31262;
                  goto LABEL_1050;
                case 8545:
                  v56 = -31262;
                  goto LABEL_1322;
                case 8546:
                  v21 = -31262;
                  goto LABEL_1320;
                case 8547:
                  v58 = -31262;
                  goto LABEL_1413;
                case 8548:
                  v59 = -31262;
                  goto LABEL_1308;
                case 8549:
                  v57 = -31262;
                  goto LABEL_1447;
                case 8550:
                  v50 = -31262;
                  goto LABEL_1298;
                case 8551:
                  v54 = -31262;
                  goto LABEL_1457;
                case 8552:
                  v51 = -31262;
                  goto LABEL_1312;
                case 8553:
                  v52 = -31262;
                  goto LABEL_1409;
                case 8554:
                  v53 = -31262;
                  goto LABEL_1415;
                case 8555:
                  v55 = -31262;
                  goto LABEL_1419;
                case 8556:
                  v46 = -31262;
                  goto LABEL_1389;
                case 8557:
                  v60 = -31262;
                  goto LABEL_1431;
                case 8558:
                  v48 = -31262;
                  goto LABEL_103;
                case 8559:
                  v61 = -31262;
                  goto LABEL_1421;
                case 8560:
                case 8561:
                case 8562:
                case 8563:
                case 8564:
                case 8565:
                case 8566:
                case 8567:
                case 8568:
                case 8569:
                case 8570:
                case 8571:
                case 8572:
                case 8573:
                case 8574:
                case 8575:
                case 8576:
                case 8577:
                case 8578:
                  goto LABEL_199;
                case 8579:
                  v47 = -31006;
                  goto LABEL_1291;
                default:
                  if (v117 != 8498)
                  {
                    goto LABEL_199;
                  }

                  v45 = -31262;
                  break;
              }

LABEL_1346:
              LOWORD(v118) = v45;
              v49 = -114;
              goto LABEL_1521;
            }

            switch(v117)
            {
              case 8486:
                v10 = -30257;
                goto LABEL_988;
              case 8490:
LABEL_67:
                v14 = 107;
                goto LABEL_885;
              case 8491:
LABEL_53:
                v10 = -23101;
                goto LABEL_988;
            }
          }

          else
          {
            if (v117 > 66735)
            {
              if (v117 > 71839)
              {
                switch(v117)
                {
                  case 125184:
                    v15 = -1566269712;
                    break;
                  case 125185:
                    v15 = -1549492496;
                    break;
                  case 125186:
                    v15 = -1532715280;
                    break;
                  case 125187:
                    v15 = -1515938064;
                    break;
                  case 125188:
                    v15 = -1499160848;
                    break;
                  case 125189:
                    v15 = -1482383632;
                    break;
                  case 125190:
                    v15 = -1465606416;
                    break;
                  case 125191:
                    v15 = -1448829200;
                    break;
                  case 125192:
                    v15 = -1432051984;
                    break;
                  case 125193:
                    v15 = -1415274768;
                    break;
                  case 125194:
                    v15 = -1398497552;
                    break;
                  case 125195:
                    v15 = -1381720336;
                    break;
                  case 125196:
                    v15 = -1364943120;
                    break;
                  case 125197:
                    v15 = -1348165904;
                    break;
                  case 125198:
                    v15 = -1331388688;
                    break;
                  case 125199:
                    v15 = -1314611472;
                    break;
                  case 125200:
                    v15 = -1297834256;
                    break;
                  case 125201:
                    v15 = -1281057040;
                    break;
                  case 125202:
                    v15 = -1264279824;
                    break;
                  case 125203:
                    v15 = -1247502608;
                    break;
                  case 125204:
                    v15 = -1230725392;
                    break;
                  case 125205:
                    v15 = -1213948176;
                    break;
                  case 125206:
                    v15 = -1197170960;
                    break;
                  case 125207:
                    v15 = -1180393744;
                    break;
                  case 125208:
                    v15 = -1163616528;
                    break;
                  case 125209:
                    v15 = -1146839312;
                    break;
                  case 125210:
                    v15 = -1130062096;
                    break;
                  case 125211:
                    v15 = -1113284880;
                    break;
                  case 125212:
                    v15 = -1096507664;
                    break;
                  case 125213:
                    v15 = -1079730448;
                    break;
                  case 125214:
                    v15 = -2136629520;
                    break;
                  case 125215:
                    v15 = -2119852304;
                    break;
                  case 125216:
                    v15 = -2103075088;
                    break;
                  case 125217:
                    v15 = -2086297872;
                    break;
                  default:
                    switch(v117)
                    {
                      case 71840:
                        v15 = -2136763920;
                        goto LABEL_668;
                      case 71841:
                        v15 = -2119986704;
                        goto LABEL_668;
                      case 71842:
                        v15 = -2103209488;
                        goto LABEL_668;
                      case 71843:
                        v15 = -2086432272;
                        goto LABEL_668;
                      case 71844:
                        v15 = -2069655056;
                        goto LABEL_668;
                      case 71845:
                        v15 = -2052877840;
                        goto LABEL_668;
                      case 71846:
                        v15 = -2036100624;
                        goto LABEL_668;
                      case 71847:
                        v15 = -2019323408;
                        goto LABEL_668;
                      case 71848:
                        v15 = -2002546192;
                        goto LABEL_668;
                      case 71849:
                        v15 = -1985768976;
                        goto LABEL_668;
                      case 71850:
                        v15 = -1968991760;
                        goto LABEL_668;
                      case 71851:
                        v15 = -1952214544;
                        goto LABEL_668;
                      case 71852:
                        v15 = -1935437328;
                        goto LABEL_668;
                      case 71853:
                        v15 = -1918660112;
                        goto LABEL_668;
                      case 71854:
                        v15 = -1901882896;
                        goto LABEL_668;
                      case 71855:
                        v15 = -1885105680;
                        goto LABEL_668;
                      case 71856:
                        v15 = -1868328464;
                        goto LABEL_668;
                      case 71857:
                        v15 = -1851551248;
                        goto LABEL_668;
                      case 71858:
                        v15 = -1834774032;
                        goto LABEL_668;
                      case 71859:
                        v15 = -1817996816;
                        goto LABEL_668;
                      case 71860:
                        v15 = -1801219600;
                        goto LABEL_668;
                      case 71861:
                        v15 = -1784442384;
                        goto LABEL_668;
                      case 71862:
                        v15 = -1767665168;
                        goto LABEL_668;
                      case 71863:
                        v15 = -1750887952;
                        goto LABEL_668;
                      case 71864:
                        v15 = -1734110736;
                        goto LABEL_668;
                      case 71865:
                        v15 = -1717333520;
                        goto LABEL_668;
                      case 71866:
                        v15 = -1700556304;
                        goto LABEL_668;
                      case 71867:
                        v15 = -1683779088;
                        goto LABEL_668;
                      case 71868:
                        v15 = -1667001872;
                        goto LABEL_668;
                      case 71869:
                        v15 = -1650224656;
                        goto LABEL_668;
                      case 71870:
                        v15 = -1633447440;
                        goto LABEL_668;
                      case 71871:
                        v15 = -1616670224;
                        goto LABEL_668;
                      default:
                        goto LABEL_199;
                    }
                }
              }

              else
              {
                switch(v117)
                {
                  case 68736:
                    v15 = -2135715600;
                    break;
                  case 68737:
                    v15 = -2118938384;
                    break;
                  case 68738:
                    v15 = -2102161168;
                    break;
                  case 68739:
                    v15 = -2085383952;
                    break;
                  case 68740:
                    v15 = -2068606736;
                    break;
                  case 68741:
                    v15 = -2051829520;
                    break;
                  case 68742:
                    v15 = -2035052304;
                    break;
                  case 68743:
                    v15 = -2018275088;
                    break;
                  case 68744:
                    v15 = -2001497872;
                    break;
                  case 68745:
                    v15 = -1984720656;
                    break;
                  case 68746:
                    v15 = -1967943440;
                    break;
                  case 68747:
                    v15 = -1951166224;
                    break;
                  case 68748:
                    v15 = -1934389008;
                    break;
                  case 68749:
                    v15 = -1917611792;
                    break;
                  case 68750:
                    v15 = -1900834576;
                    break;
                  case 68751:
                    v15 = -1884057360;
                    break;
                  case 68752:
                    v15 = -1867280144;
                    break;
                  case 68753:
                    v15 = -1850502928;
                    break;
                  case 68754:
                    v15 = -1833725712;
                    break;
                  case 68755:
                    v15 = -1816948496;
                    break;
                  case 68756:
                    v15 = -1800171280;
                    break;
                  case 68757:
                    v15 = -1783394064;
                    break;
                  case 68758:
                    v15 = -1766616848;
                    break;
                  case 68759:
                    v15 = -1749839632;
                    break;
                  case 68760:
                    v15 = -1733062416;
                    break;
                  case 68761:
                    v15 = -1716285200;
                    break;
                  case 68762:
                    v15 = -1699507984;
                    break;
                  case 68763:
                    v15 = -1682730768;
                    break;
                  case 68764:
                    v15 = -1665953552;
                    break;
                  case 68765:
                    v15 = -1649176336;
                    break;
                  case 68766:
                    v15 = -1632399120;
                    break;
                  case 68767:
                    v15 = -1615621904;
                    break;
                  case 68768:
                    v15 = -1598844688;
                    break;
                  case 68769:
                    v15 = -1582067472;
                    break;
                  case 68770:
                    v15 = -1565290256;
                    break;
                  case 68771:
                    v15 = -1548513040;
                    break;
                  case 68772:
                    v15 = -1531735824;
                    break;
                  case 68773:
                    v15 = -1514958608;
                    break;
                  case 68774:
                    v15 = -1498181392;
                    break;
                  case 68775:
                    v15 = -1481404176;
                    break;
                  case 68776:
                    v15 = -1464626960;
                    break;
                  case 68777:
                    v15 = -1447849744;
                    break;
                  case 68778:
                    v15 = -1431072528;
                    break;
                  case 68779:
                    v15 = -1414295312;
                    break;
                  case 68780:
                    v15 = -1397518096;
                    break;
                  case 68781:
                    v15 = -1380740880;
                    break;
                  case 68782:
                    v15 = -1363963664;
                    break;
                  case 68783:
                    v15 = -1347186448;
                    break;
                  case 68784:
                    v15 = -1330409232;
                    break;
                  case 68785:
                    v15 = -1313632016;
                    break;
                  case 68786:
                    v15 = -1296854800;
                    break;
                  default:
                    switch(v117)
                    {
                      case 66736:
                        v15 = -1735159568;
                        goto LABEL_668;
                      case 66737:
                        v15 = -1718382352;
                        goto LABEL_668;
                      case 66738:
                        v15 = -1701605136;
                        goto LABEL_668;
                      case 66739:
                        v15 = -1684827920;
                        goto LABEL_668;
                      case 66740:
                        v15 = -1668050704;
                        goto LABEL_668;
                      case 66741:
                        v15 = -1651273488;
                        goto LABEL_668;
                      case 66742:
                        v15 = -1634496272;
                        goto LABEL_668;
                      case 66743:
                        v15 = -1617719056;
                        goto LABEL_668;
                      case 66744:
                        v15 = -1600941840;
                        goto LABEL_668;
                      case 66745:
                        v15 = -1584164624;
                        goto LABEL_668;
                      case 66746:
                        v15 = -1567387408;
                        goto LABEL_668;
                      case 66747:
                        v15 = -1550610192;
                        goto LABEL_668;
                      case 66748:
                        v15 = -1533832976;
                        goto LABEL_668;
                      case 66749:
                        v15 = -1517055760;
                        goto LABEL_668;
                      case 66750:
                        v15 = -1500278544;
                        goto LABEL_668;
                      case 66751:
                        v15 = -1483501328;
                        goto LABEL_668;
                      case 66752:
                        v15 = -1466724112;
                        goto LABEL_668;
                      case 66753:
                        v15 = -1449946896;
                        goto LABEL_668;
                      case 66754:
                        v15 = -1433169680;
                        goto LABEL_668;
                      case 66755:
                        v15 = -1416392464;
                        goto LABEL_668;
                      case 66756:
                        v15 = -1399615248;
                        goto LABEL_668;
                      case 66757:
                        v15 = -1382838032;
                        goto LABEL_668;
                      case 66758:
                        v15 = -1366060816;
                        goto LABEL_668;
                      case 66759:
                        v15 = -1349283600;
                        goto LABEL_668;
                      case 66760:
                        v15 = -1332506384;
                        goto LABEL_668;
                      case 66761:
                        v15 = -1315729168;
                        goto LABEL_668;
                      case 66762:
                        v15 = -1298951952;
                        goto LABEL_668;
                      case 66763:
                        v15 = -1282174736;
                        goto LABEL_668;
                      case 66764:
                        v15 = -1265397520;
                        goto LABEL_668;
                      case 66765:
                        v15 = -1248620304;
                        goto LABEL_668;
                      case 66766:
                        v15 = -1231843088;
                        goto LABEL_668;
                      case 66767:
                        v15 = -1215065872;
                        goto LABEL_668;
                      case 66768:
                        v15 = -1198288656;
                        goto LABEL_668;
                      case 66769:
                        v15 = -1181511440;
                        goto LABEL_668;
                      case 66770:
                        v15 = -1164734224;
                        goto LABEL_668;
                      case 66771:
                        v15 = -1147957008;
                        goto LABEL_668;
                      default:
                        goto LABEL_199;
                    }
                }
              }

LABEL_668:
              v118 = v15;
              v89 = v7;
              v90 = 4;
              goto LABEL_1522;
            }

            if (v117 <= 64257)
            {
              switch(v117)
              {
                case 43888:
                  v11 = -28959;
                  goto LABEL_1151;
                case 43889:
                  v12 = -28959;
                  goto LABEL_1498;
                case 43890:
                  v40 = -28959;
                  goto LABEL_1157;
                case 43891:
                  v18 = -28959;
                  goto LABEL_1514;
                case 43892:
                  v35 = -28959;
                  goto LABEL_1208;
                case 43893:
                  v37 = -28959;
                  goto LABEL_1483;
                case 43894:
                  v43 = -28959;
                  goto LABEL_1177;
                case 43895:
                  v44 = -28959;
                  goto LABEL_1468;
                case 43896:
                  v29 = -28959;
                  goto LABEL_1305;
                case 43897:
                  v28 = -28959;
                  goto LABEL_1472;
                case 43898:
                  v113 = -28959;
                  goto LABEL_1362;
                case 43899:
                  v92 = -28959;
                  goto LABEL_1516;
                case 43900:
                  v111 = -28959;
                  goto LABEL_1381;
                case 43901:
                  v104 = -28959;
                  goto LABEL_1175;
                case 43902:
                  v110 = -28959;
                  goto LABEL_1206;
                case 43903:
                  v103 = -28959;
                  goto LABEL_1159;
                case 43904:
                  LOWORD(v118) = -28959;
                  v49 = -80;
                  goto LABEL_1521;
                case 43905:
                  LOWORD(v118) = -28959;
                  v49 = -79;
                  goto LABEL_1521;
                case 43906:
                  LOWORD(v118) = -28959;
                  v49 = -78;
                  goto LABEL_1521;
                case 43907:
                  LOWORD(v118) = -28959;
                  v49 = -77;
                  goto LABEL_1521;
                case 43908:
                  LOWORD(v118) = -28959;
                  v49 = -76;
                  goto LABEL_1521;
                case 43909:
                  LOWORD(v118) = -28959;
                  v49 = -75;
                  goto LABEL_1521;
                case 43910:
                  LOWORD(v118) = -28959;
                  v49 = -74;
                  goto LABEL_1521;
                case 43911:
                  LOWORD(v118) = -28959;
                  v49 = -73;
                  goto LABEL_1521;
                case 43912:
                  LOWORD(v118) = -28959;
                  v49 = -72;
                  goto LABEL_1521;
                case 43913:
                  LOWORD(v118) = -28959;
                  v49 = -71;
                  goto LABEL_1521;
                case 43914:
                  LOWORD(v118) = -28959;
                  v49 = -70;
                  goto LABEL_1521;
                case 43915:
                  LOWORD(v118) = -28959;
                  v49 = -69;
                  goto LABEL_1521;
                case 43916:
                  LOWORD(v118) = -28959;
                  v49 = -68;
                  goto LABEL_1521;
                case 43917:
                  LOWORD(v118) = -28959;
                  v49 = -67;
                  goto LABEL_1521;
                case 43918:
                  LOWORD(v118) = -28959;
                  v49 = -66;
                  goto LABEL_1521;
                case 43919:
                  LOWORD(v118) = -28959;
                  v49 = -65;
                  goto LABEL_1521;
                case 43920:
                  LOWORD(v118) = -28703;
                  v49 = 0x80;
                  goto LABEL_1521;
                case 43921:
                  v19 = -28703;
                  goto LABEL_1142;
                case 43922:
                  v109 = -28703;
                  goto LABEL_1229;
                case 43923:
                  v107 = -28703;
                  goto LABEL_1223;
                case 43924:
                  v108 = -28703;
                  goto LABEL_1226;
                case 43925:
                  v106 = -28703;
                  goto LABEL_1216;
                case 43926:
                  v81 = -28703;
                  goto LABEL_1275;
                case 43927:
                  v115 = -28703;
                  goto LABEL_1236;
                case 43928:
                  v80 = -28703;
                  goto LABEL_1273;
                case 43929:
                  v112 = -28703;
                  goto LABEL_1241;
                case 43930:
                  v87 = -28703;
                  goto LABEL_1318;
                case 43931:
                  v105 = -28703;
                  goto LABEL_1239;
                case 43932:
                  v85 = -28703;
                  goto LABEL_1453;
                case 43933:
                  v114 = -28703;
                  goto LABEL_1218;
                case 43934:
                  v45 = -28703;
                  goto LABEL_1346;
                case 43935:
                  v88 = -28703;
                  goto LABEL_1508;
                case 43936:
                  v13 = -28703;
                  goto LABEL_1339;
                case 43937:
                  v34 = -28703;
                  goto LABEL_1485;
                case 43938:
                  v30 = -28703;
                  goto LABEL_1269;
                case 43939:
                  v32 = -28703;
                  goto LABEL_1510;
                case 43940:
                  v25 = -28703;
                  goto LABEL_1293;
                case 43941:
                  v36 = -28703;
                  goto LABEL_1490;
                case 43942:
                  v39 = -28703;
                  goto LABEL_1332;
                case 43943:
                  v33 = -28703;
                  goto LABEL_1512;
                case 43944:
                  v42 = -28703;
                  goto LABEL_1263;
                case 43945:
                  v27 = -28703;
                  goto LABEL_1487;
                case 43946:
                  v41 = -28703;
                  goto LABEL_1296;
                case 43947:
                  v24 = -28703;
                  goto LABEL_1520;
                case 43948:
                  v26 = -28703;
                  goto LABEL_1257;
                case 43949:
                  v38 = -28703;
                  goto LABEL_1503;
                case 43950:
                  v23 = -28703;
                  goto LABEL_1282;
                case 43951:
                  v31 = -28703;
                  goto LABEL_1505;
                case 43952:
                  v11 = -28703;
                  goto LABEL_1151;
                case 43953:
                  v12 = -28703;
                  goto LABEL_1498;
                case 43954:
                  v40 = -28703;
                  goto LABEL_1157;
                case 43955:
                  v18 = -28703;
                  goto LABEL_1514;
                case 43956:
                  v35 = -28703;
                  goto LABEL_1208;
                case 43957:
                  v37 = -28703;
                  goto LABEL_1483;
                case 43958:
                  v43 = -28703;
                  goto LABEL_1177;
                case 43959:
                  v44 = -28703;
                  goto LABEL_1468;
                case 43960:
                  v29 = -28703;
                  goto LABEL_1305;
                case 43961:
                  v28 = -28703;
                  goto LABEL_1472;
                case 43962:
                  v113 = -28703;
                  goto LABEL_1362;
                case 43963:
                  v92 = -28703;
                  goto LABEL_1516;
                case 43964:
                  v111 = -28703;
                  goto LABEL_1381;
                case 43965:
                  v104 = -28703;
LABEL_1175:
                  LOWORD(v118) = v104;
                  v49 = -83;
                  goto LABEL_1521;
                case 43966:
                  v110 = -28703;
LABEL_1206:
                  LOWORD(v118) = v110;
                  v49 = -82;
                  goto LABEL_1521;
                case 43967:
                  v103 = -28703;
LABEL_1159:
                  LOWORD(v118) = v103;
                  v49 = -81;
                  goto LABEL_1521;
                default:
                  if (v117 == 64256)
                  {
                    v65 = 102;
LABEL_1194:
                    LOBYTE(v118) = v65;
                    cmark_strbuf_put(v7, &v118, 1);
                    LOBYTE(v118) = v65;
                    goto LABEL_886;
                  }

                  if (v117 != 64257)
                  {
                    goto LABEL_199;
                  }

                  LOBYTE(v118) = 102;
                  break;
              }

LABEL_138:
              cmark_strbuf_put(v7, &v118, 1);
              LOBYTE(v118) = 105;
              goto LABEL_886;
            }

            if (v117 > 66559)
            {
              switch(v117)
              {
                case 66560:
                  v15 = -1466920720;
                  goto LABEL_668;
                case 66561:
                  v15 = -1450143504;
                  goto LABEL_668;
                case 66562:
                  v15 = -1433366288;
                  goto LABEL_668;
                case 66563:
                  v15 = -1416589072;
                  goto LABEL_668;
                case 66564:
                  v15 = -1399811856;
                  goto LABEL_668;
                case 66565:
                  v15 = -1383034640;
                  goto LABEL_668;
                case 66566:
                  v15 = -1366257424;
                  goto LABEL_668;
                case 66567:
                  v15 = -1349480208;
                  goto LABEL_668;
                case 66568:
                  v15 = -1332702992;
                  goto LABEL_668;
                case 66569:
                  v15 = -1315925776;
                  goto LABEL_668;
                case 66570:
                  v15 = -1299148560;
                  goto LABEL_668;
                case 66571:
                  v15 = -1282371344;
                  goto LABEL_668;
                case 66572:
                  v15 = -1265594128;
                  goto LABEL_668;
                case 66573:
                  v15 = -1248816912;
                  goto LABEL_668;
                case 66574:
                  v15 = -1232039696;
                  goto LABEL_668;
                case 66575:
                  v15 = -1215262480;
                  goto LABEL_668;
                case 66576:
                  v15 = -1198485264;
                  goto LABEL_668;
                case 66577:
                  v15 = -1181708048;
                  goto LABEL_668;
                case 66578:
                  v15 = -1164930832;
                  goto LABEL_668;
                case 66579:
                  v15 = -1148153616;
                  goto LABEL_668;
                case 66580:
                  v15 = -1131376400;
                  goto LABEL_668;
                case 66581:
                  v15 = -1114599184;
                  goto LABEL_668;
                case 66582:
                  v15 = -1097821968;
                  goto LABEL_668;
                case 66583:
                  v15 = -1081044752;
                  goto LABEL_668;
                case 66584:
                  v15 = -2137943824;
                  goto LABEL_668;
                case 66585:
                  v15 = -2121166608;
                  goto LABEL_668;
                case 66586:
                  v15 = -2104389392;
                  goto LABEL_668;
                case 66587:
                  v15 = -2087612176;
                  goto LABEL_668;
                case 66588:
                  v15 = -2070834960;
                  goto LABEL_668;
                case 66589:
                  v15 = -2054057744;
                  goto LABEL_668;
                case 66590:
                  v15 = -2037280528;
                  goto LABEL_668;
                case 66591:
                  v15 = -2020503312;
                  goto LABEL_668;
                case 66592:
                  v15 = -2003726096;
                  goto LABEL_668;
                case 66593:
                  v15 = -1986948880;
                  goto LABEL_668;
                case 66594:
                  v15 = -1970171664;
                  goto LABEL_668;
                case 66595:
                  v15 = -1953394448;
                  goto LABEL_668;
                case 66596:
                  v15 = -1936617232;
                  goto LABEL_668;
                case 66597:
                  v15 = -1919840016;
                  goto LABEL_668;
                case 66598:
                  v15 = -1903062800;
                  goto LABEL_668;
                case 66599:
                  v15 = -1886285584;
                  goto LABEL_668;
                default:
                  goto LABEL_199;
              }
            }

            if (v117 > 64277)
            {
              switch(v117)
              {
                case 65313:
                  v19 = -16913;
LABEL_1142:
                  LOWORD(v118) = v19;
                  v49 = -127;
                  goto LABEL_1521;
                case 65314:
                  v109 = -16913;
LABEL_1229:
                  LOWORD(v118) = v109;
                  v49 = -126;
                  goto LABEL_1521;
                case 65315:
                  v107 = -16913;
LABEL_1223:
                  LOWORD(v118) = v107;
                  v49 = -125;
                  goto LABEL_1521;
                case 65316:
                  v108 = -16913;
LABEL_1226:
                  LOWORD(v118) = v108;
                  v49 = -124;
                  goto LABEL_1521;
                case 65317:
                  v106 = -16913;
LABEL_1216:
                  LOWORD(v118) = v106;
                  v49 = -123;
                  goto LABEL_1521;
                case 65318:
                  v81 = -16913;
                  goto LABEL_1275;
                case 65319:
                  v115 = -16913;
LABEL_1236:
                  LOWORD(v118) = v115;
                  v49 = -121;
                  goto LABEL_1521;
                case 65320:
                  v80 = -16913;
                  goto LABEL_1273;
                case 65321:
                  v112 = -16913;
LABEL_1241:
                  LOWORD(v118) = v112;
                  v49 = -119;
                  goto LABEL_1521;
                case 65322:
                  v87 = -16913;
                  goto LABEL_1318;
                case 65323:
                  v105 = -16913;
LABEL_1239:
                  LOWORD(v118) = v105;
                  v49 = -117;
                  goto LABEL_1521;
                case 65324:
                  v85 = -16913;
                  goto LABEL_1453;
                case 65325:
                  v114 = -16913;
LABEL_1218:
                  LOWORD(v118) = v114;
                  v49 = -115;
                  goto LABEL_1521;
                case 65326:
                  v45 = -16913;
                  goto LABEL_1346;
                case 65327:
                  v88 = -16913;
                  goto LABEL_1508;
                case 65328:
                  v13 = -16913;
                  goto LABEL_1339;
                case 65329:
                  v34 = -16913;
                  goto LABEL_1485;
                case 65330:
                  v30 = -16913;
                  goto LABEL_1269;
                case 65331:
                  v32 = -16913;
                  goto LABEL_1510;
                case 65332:
                  v25 = -16913;
                  goto LABEL_1293;
                case 65333:
                  v36 = -16913;
                  goto LABEL_1490;
                case 65334:
                  v39 = -16913;
                  goto LABEL_1332;
                case 65335:
                  v33 = -16913;
                  goto LABEL_1512;
                case 65336:
                  v42 = -16913;
                  goto LABEL_1263;
                case 65337:
                  v27 = -16913;
                  goto LABEL_1487;
                case 65338:
                  v41 = -16913;
                  goto LABEL_1296;
                default:
                  if (v117 == 64278)
                  {
                    v22 = -16683;
                    goto LABEL_1213;
                  }

                  if (v117 != 64279)
                  {
                    goto LABEL_199;
                  }

                  LOWORD(v118) = -19243;
                  cmark_strbuf_put(v7, &v118, 2);
                  v10 = -21035;
                  break;
              }

              goto LABEL_988;
            }

            if (v117 <= 64261)
            {
              if (v117 > 64259)
              {
                if (v117 == 64260)
                {
                  LOBYTE(v118) = 102;
                  cmark_strbuf_put(v7, &v118, 1);
                  LOBYTE(v118) = 102;
                  goto LABEL_196;
                }

LABEL_125:
                LOBYTE(v118) = 115;
                cmark_strbuf_put(v7, &v118, 1);
LABEL_126:
                v14 = 116;
              }

              else
              {
                if (v117 != 64258)
                {
                  LOBYTE(v118) = 102;
                  cmark_strbuf_put(v7, &v118, 1);
                  LOBYTE(v118) = 102;
                  goto LABEL_138;
                }

                LOBYTE(v118) = 102;
LABEL_196:
                cmark_strbuf_put(v7, &v118, 1);
LABEL_197:
                v14 = 108;
              }

LABEL_885:
              LOBYTE(v118) = v14;
LABEL_886:
              v89 = v7;
              v90 = 1;
LABEL_1522:
              result = cmark_strbuf_put(v89, &v118, v90);
              goto LABEL_1523;
            }

            if (v117 > 64275)
            {
              LOWORD(v118) = -19243;
              if (v117 == 64276)
              {
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -23083;
              }

              else
              {
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -21547;
              }

              goto LABEL_988;
            }

            if (v117 == 64262)
            {
              goto LABEL_125;
            }

            if (v117 == 64275)
            {
              v22 = -19243;
LABEL_1213:
              LOWORD(v118) = v22;
              cmark_strbuf_put(v7, &v118, 2);
              v10 = -18731;
              goto LABEL_988;
            }
          }
        }

        else
        {
          if (v117 <= 4255)
          {
            switch(v117)
            {
              case 837:
              case 921:
                v10 = -17970;
                goto LABEL_988;
              case 838:
              case 839:
              case 840:
              case 841:
              case 842:
              case 843:
              case 844:
              case 845:
              case 846:
              case 847:
              case 848:
              case 849:
              case 850:
              case 851:
              case 852:
              case 853:
              case 854:
              case 855:
              case 856:
              case 857:
              case 858:
              case 859:
              case 860:
              case 861:
              case 862:
              case 863:
              case 864:
              case 865:
              case 866:
              case 867:
              case 868:
              case 869:
              case 870:
              case 871:
              case 872:
              case 873:
              case 874:
              case 875:
              case 876:
              case 877:
              case 878:
              case 879:
              case 881:
              case 883:
              case 884:
              case 885:
              case 887:
              case 888:
              case 889:
              case 890:
              case 891:
              case 892:
              case 893:
              case 894:
              case 896:
              case 897:
              case 898:
              case 899:
              case 900:
              case 901:
              case 903:
              case 907:
              case 909:
              case 930:
              case 940:
              case 941:
              case 942:
              case 943:
              case 945:
              case 946:
              case 947:
              case 948:
              case 949:
              case 950:
              case 951:
              case 952:
              case 953:
              case 954:
              case 955:
              case 956:
              case 957:
              case 958:
              case 959:
              case 960:
              case 961:
              case 963:
              case 964:
              case 965:
              case 966:
              case 967:
              case 968:
              case 969:
              case 970:
              case 971:
              case 972:
              case 973:
              case 974:
              case 978:
              case 979:
              case 980:
              case 983:
              case 985:
              case 987:
              case 989:
              case 991:
              case 993:
              case 995:
              case 997:
              case 999:
              case 1001:
              case 1003:
              case 1005:
              case 1007:
              case 1010:
              case 1011:
              case 1014:
              case 1016:
              case 1019:
              case 1020:
              case 1072:
              case 1073:
              case 1074:
              case 1075:
              case 1076:
              case 1077:
              case 1078:
              case 1079:
              case 1080:
              case 1081:
              case 1082:
              case 1083:
              case 1084:
              case 1085:
              case 1086:
              case 1087:
              case 1088:
              case 1089:
              case 1090:
              case 1091:
              case 1092:
              case 1093:
              case 1094:
              case 1095:
              case 1096:
              case 1097:
              case 1098:
              case 1099:
              case 1100:
              case 1101:
              case 1102:
              case 1103:
              case 1104:
              case 1105:
              case 1106:
              case 1107:
              case 1108:
              case 1109:
              case 1110:
              case 1111:
              case 1112:
              case 1113:
              case 1114:
              case 1115:
              case 1116:
              case 1117:
              case 1118:
              case 1119:
              case 1121:
              case 1123:
              case 1125:
              case 1127:
              case 1129:
              case 1131:
              case 1133:
              case 1135:
              case 1137:
              case 1139:
              case 1141:
              case 1143:
              case 1145:
              case 1147:
              case 1149:
              case 1151:
              case 1153:
              case 1154:
              case 1155:
              case 1156:
              case 1157:
              case 1158:
              case 1159:
              case 1160:
              case 1161:
              case 1163:
              case 1165:
              case 1167:
              case 1169:
              case 1171:
              case 1173:
              case 1175:
              case 1177:
              case 1179:
              case 1181:
              case 1183:
              case 1185:
              case 1187:
              case 1189:
              case 1191:
              case 1193:
              case 1195:
              case 1197:
              case 1199:
              case 1201:
              case 1203:
              case 1205:
              case 1207:
              case 1209:
              case 1211:
              case 1213:
              case 1215:
              case 1218:
              case 1220:
              case 1222:
              case 1224:
              case 1226:
              case 1228:
              case 1230:
              case 1231:
              case 1233:
              case 1235:
              case 1237:
              case 1239:
              case 1241:
              case 1243:
              case 1245:
              case 1247:
              case 1249:
              case 1251:
              case 1253:
              case 1255:
              case 1257:
              case 1259:
              case 1261:
              case 1263:
              case 1265:
              case 1267:
              case 1269:
              case 1271:
              case 1273:
              case 1275:
              case 1277:
              case 1279:
              case 1281:
              case 1283:
              case 1285:
              case 1287:
              case 1289:
              case 1291:
              case 1293:
              case 1295:
              case 1297:
              case 1299:
              case 1301:
              case 1303:
              case 1305:
              case 1307:
              case 1309:
              case 1311:
              case 1313:
              case 1315:
              case 1317:
              case 1319:
              case 1321:
              case 1323:
              case 1325:
              case 1327:
              case 1328:
              case 1367:
              case 1368:
              case 1369:
              case 1370:
              case 1371:
              case 1372:
              case 1373:
              case 1374:
              case 1375:
              case 1376:
              case 1377:
              case 1378:
              case 1379:
              case 1380:
              case 1381:
              case 1382:
              case 1383:
              case 1384:
              case 1385:
              case 1386:
              case 1387:
              case 1388:
              case 1389:
              case 1390:
              case 1391:
              case 1392:
              case 1393:
              case 1394:
              case 1395:
              case 1396:
              case 1397:
              case 1398:
              case 1399:
              case 1400:
              case 1401:
              case 1402:
              case 1403:
              case 1404:
              case 1405:
              case 1406:
              case 1407:
              case 1408:
              case 1409:
              case 1410:
              case 1411:
              case 1412:
              case 1413:
              case 1414:
                goto LABEL_199;
              case 880:
                v10 = -20019;
                goto LABEL_988;
              case 882:
                v10 = -19507;
                goto LABEL_988;
              case 886:
                v10 = -18483;
                goto LABEL_988;
              case 895:
                v10 = -19505;
                goto LABEL_988;
              case 902:
                v10 = -21298;
                goto LABEL_988;
              case 904:
                v10 = -21042;
                goto LABEL_988;
              case 905:
                v10 = -20786;
                goto LABEL_988;
              case 906:
                v10 = -20530;
                goto LABEL_988;
              case 908:
                v10 = -29489;
                goto LABEL_988;
              case 910:
                v10 = -29233;
                goto LABEL_988;
              case 911:
                v10 = -28977;
                goto LABEL_988;
              case 912:
                goto LABEL_152;
              case 913:
                v10 = -20018;
                goto LABEL_988;
              case 914:
              case 976:
                v10 = -19762;
                goto LABEL_988;
              case 915:
                v10 = -19506;
                goto LABEL_988;
              case 916:
                v10 = -19250;
                goto LABEL_988;
              case 917:
              case 1013:
                v10 = -18994;
                goto LABEL_988;
              case 918:
                v10 = -18738;
                goto LABEL_988;
              case 919:
                v10 = -18482;
                goto LABEL_988;
              case 920:
              case 977:
              case 1012:
                v10 = -18226;
                goto LABEL_988;
              case 922:
              case 1008:
                v10 = -17714;
                goto LABEL_988;
              case 923:
                v10 = -17458;
                goto LABEL_988;
              case 924:
                v10 = -17202;
                goto LABEL_988;
              case 925:
                v10 = -16946;
                goto LABEL_988;
              case 926:
                v10 = -16690;
                goto LABEL_988;
              case 927:
                v10 = -16434;
                goto LABEL_988;
              case 928:
              case 982:
                v10 = -32561;
                goto LABEL_988;
              case 929:
              case 1009:
                v10 = -32305;
                goto LABEL_988;
              case 931:
              case 962:
                v10 = -31793;
                goto LABEL_988;
              case 932:
                v10 = -31537;
                goto LABEL_988;
              case 933:
                v10 = -31281;
                goto LABEL_988;
              case 934:
              case 981:
                v10 = -31025;
                goto LABEL_988;
              case 935:
                v10 = -30769;
                goto LABEL_988;
              case 936:
                v10 = -30513;
                goto LABEL_988;
              case 937:
                v10 = -30257;
                goto LABEL_988;
              case 938:
                v10 = -30001;
                goto LABEL_988;
              case 939:
                v10 = -29745;
                goto LABEL_988;
              case 944:
                goto LABEL_151;
              case 975:
                v10 = -26673;
                goto LABEL_988;
              case 984:
                v10 = -26161;
                goto LABEL_988;
              case 986:
                v10 = -25649;
                goto LABEL_988;
              case 988:
                v10 = -25137;
                goto LABEL_988;
              case 990:
                v10 = -24625;
                goto LABEL_988;
              case 992:
                v10 = -24113;
                goto LABEL_988;
              case 994:
                v10 = -23601;
                goto LABEL_988;
              case 996:
                v10 = -23089;
                goto LABEL_988;
              case 998:
                v10 = -22577;
                goto LABEL_988;
              case 1000:
                v10 = -22065;
                goto LABEL_988;
              case 1002:
                v10 = -21553;
                goto LABEL_988;
              case 1004:
                v10 = -21041;
                goto LABEL_988;
              case 1006:
                v10 = -20529;
                goto LABEL_988;
              case 1015:
                v10 = -18225;
                goto LABEL_988;
              case 1017:
                v10 = -19761;
                goto LABEL_988;
              case 1018:
                v10 = -17457;
                goto LABEL_988;
              case 1021:
                v10 = -17459;
                goto LABEL_988;
              case 1022:
                v10 = -17203;
                goto LABEL_988;
              case 1023:
                v10 = -16947;
                goto LABEL_988;
              case 1024:
                v10 = -28463;
                goto LABEL_988;
              case 1025:
                v10 = -28207;
                goto LABEL_988;
              case 1026:
                v10 = -27951;
                goto LABEL_988;
              case 1027:
                v10 = -27695;
                goto LABEL_988;
              case 1028:
                v10 = -27439;
                goto LABEL_988;
              case 1029:
                v10 = -27183;
                goto LABEL_988;
              case 1030:
                v10 = -26927;
                goto LABEL_988;
              case 1031:
                v10 = -26671;
                goto LABEL_988;
              case 1032:
                v10 = -26415;
                goto LABEL_988;
              case 1033:
                v10 = -26159;
                goto LABEL_988;
              case 1034:
                v10 = -25903;
                goto LABEL_988;
              case 1035:
                v10 = -25647;
                goto LABEL_988;
              case 1036:
                v10 = -25391;
                goto LABEL_988;
              case 1037:
                v10 = -25135;
                goto LABEL_988;
              case 1038:
                v10 = -24879;
                goto LABEL_988;
              case 1039:
                v10 = -24623;
                goto LABEL_988;
              case 1040:
                v10 = -20272;
                goto LABEL_988;
              case 1041:
                v10 = -20016;
                goto LABEL_988;
              case 1042:
                v10 = -19760;
                goto LABEL_988;
              case 1043:
                v10 = -19504;
                goto LABEL_988;
              case 1044:
                v10 = -19248;
                goto LABEL_988;
              case 1045:
                v10 = -18992;
                goto LABEL_988;
              case 1046:
                v10 = -18736;
                goto LABEL_988;
              case 1047:
                v10 = -18480;
                goto LABEL_988;
              case 1048:
                v10 = -18224;
                goto LABEL_988;
              case 1049:
                v10 = -17968;
                goto LABEL_988;
              case 1050:
                v10 = -17712;
                goto LABEL_988;
              case 1051:
                v10 = -17456;
                goto LABEL_988;
              case 1052:
                v10 = -17200;
                goto LABEL_988;
              case 1053:
                v10 = -16944;
                goto LABEL_988;
              case 1054:
                v10 = -16688;
                goto LABEL_988;
              case 1055:
                v10 = -16432;
                goto LABEL_988;
              case 1056:
                v10 = -32559;
                goto LABEL_988;
              case 1057:
                v10 = -32303;
                goto LABEL_988;
              case 1058:
                v10 = -32047;
                goto LABEL_988;
              case 1059:
                v10 = -31791;
                goto LABEL_988;
              case 1060:
                v10 = -31535;
                goto LABEL_988;
              case 1061:
                v10 = -31279;
                goto LABEL_988;
              case 1062:
                v10 = -31023;
                goto LABEL_988;
              case 1063:
                v10 = -30767;
                goto LABEL_988;
              case 1064:
                v10 = -30511;
                goto LABEL_988;
              case 1065:
                v10 = -30255;
                goto LABEL_988;
              case 1066:
                v10 = -29999;
                goto LABEL_988;
              case 1067:
                v10 = -29743;
                goto LABEL_988;
              case 1068:
                v10 = -29487;
                goto LABEL_988;
              case 1069:
                v10 = -29231;
                goto LABEL_988;
              case 1070:
                v10 = -28975;
                goto LABEL_988;
              case 1071:
                v10 = -28719;
                goto LABEL_988;
              case 1120:
                v10 = -24111;
                goto LABEL_988;
              case 1122:
                v10 = -23599;
                goto LABEL_988;
              case 1124:
                v10 = -23087;
                goto LABEL_988;
              case 1126:
                v10 = -22575;
                goto LABEL_988;
              case 1128:
                v10 = -22063;
                goto LABEL_988;
              case 1130:
                v10 = -21551;
                goto LABEL_988;
              case 1132:
                v10 = -21039;
                goto LABEL_988;
              case 1134:
                v10 = -20527;
                goto LABEL_988;
              case 1136:
                v10 = -20015;
                goto LABEL_988;
              case 1138:
                v10 = -19503;
                goto LABEL_988;
              case 1140:
                v10 = -18991;
                goto LABEL_988;
              case 1142:
                v10 = -18479;
                goto LABEL_988;
              case 1144:
                v10 = -17967;
                goto LABEL_988;
              case 1146:
                v10 = -17455;
                goto LABEL_988;
              case 1148:
                v10 = -16943;
                goto LABEL_988;
              case 1150:
                v10 = -16431;
                goto LABEL_988;
              case 1152:
                v10 = -32302;
                goto LABEL_988;
              case 1162:
                v10 = -29742;
                goto LABEL_988;
              case 1164:
                v10 = -29230;
                goto LABEL_988;
              case 1166:
                v10 = -28718;
                goto LABEL_988;
              case 1168:
                v10 = -28206;
                goto LABEL_988;
              case 1170:
                v10 = -27694;
                goto LABEL_988;
              case 1172:
                v10 = -27182;
                goto LABEL_988;
              case 1174:
                v10 = -26670;
                goto LABEL_988;
              case 1176:
                v10 = -26158;
                goto LABEL_988;
              case 1178:
                v10 = -25646;
                goto LABEL_988;
              case 1180:
                v10 = -25134;
                goto LABEL_988;
              case 1182:
                v10 = -24622;
                goto LABEL_988;
              case 1184:
                v10 = -24110;
                goto LABEL_988;
              case 1186:
                v10 = -23598;
                goto LABEL_988;
              case 1188:
                v10 = -23086;
                goto LABEL_988;
              case 1190:
                v10 = -22574;
                goto LABEL_988;
              case 1192:
                v10 = -22062;
                goto LABEL_988;
              case 1194:
                v10 = -21550;
                goto LABEL_988;
              case 1196:
                v10 = -21038;
                goto LABEL_988;
              case 1198:
                v10 = -20526;
                goto LABEL_988;
              case 1200:
                v10 = -20014;
                goto LABEL_988;
              case 1202:
                v10 = -19502;
                goto LABEL_988;
              case 1204:
                v10 = -18990;
                goto LABEL_988;
              case 1206:
                v10 = -18478;
                goto LABEL_988;
              case 1208:
                v10 = -17966;
                goto LABEL_988;
              case 1210:
                v10 = -17454;
                goto LABEL_988;
              case 1212:
                v10 = -16942;
                goto LABEL_988;
              case 1214:
                v10 = -16430;
                goto LABEL_988;
              case 1216:
                v10 = -28717;
                goto LABEL_988;
              case 1217:
                v10 = -32045;
                goto LABEL_988;
              case 1219:
                v10 = -31533;
                goto LABEL_988;
              case 1221:
                v10 = -31021;
                goto LABEL_988;
              case 1223:
                v10 = -30509;
                goto LABEL_988;
              case 1225:
                v10 = -29997;
                goto LABEL_988;
              case 1227:
                v10 = -29485;
                goto LABEL_988;
              case 1229:
                v10 = -28973;
                goto LABEL_988;
              case 1232:
                v10 = -28205;
                goto LABEL_988;
              case 1234:
                v10 = -27693;
                goto LABEL_988;
              case 1236:
                v10 = -27181;
                goto LABEL_988;
              case 1238:
                v10 = -26669;
                goto LABEL_988;
              case 1240:
                v10 = -26157;
                goto LABEL_988;
              case 1242:
                v10 = -25645;
                goto LABEL_988;
              case 1244:
                v10 = -25133;
                goto LABEL_988;
              case 1246:
                v10 = -24621;
                goto LABEL_988;
              case 1248:
                v10 = -24109;
                goto LABEL_988;
              case 1250:
                v10 = -23597;
                goto LABEL_988;
              case 1252:
                v10 = -23085;
                goto LABEL_988;
              case 1254:
                v10 = -22573;
                goto LABEL_988;
              case 1256:
                v10 = -22061;
                goto LABEL_988;
              case 1258:
                v10 = -21549;
                goto LABEL_988;
              case 1260:
                v10 = -21037;
                goto LABEL_988;
              case 1262:
                v10 = -20525;
                goto LABEL_988;
              case 1264:
                v10 = -20013;
                goto LABEL_988;
              case 1266:
                v10 = -19501;
                goto LABEL_988;
              case 1268:
                v10 = -18989;
                goto LABEL_988;
              case 1270:
                v10 = -18477;
                goto LABEL_988;
              case 1272:
                v10 = -17965;
                goto LABEL_988;
              case 1274:
                v10 = -17453;
                goto LABEL_988;
              case 1276:
                v10 = -16941;
                goto LABEL_988;
              case 1278:
                v10 = -16429;
                goto LABEL_988;
              case 1280:
                v10 = -32300;
                goto LABEL_988;
              case 1282:
                v10 = -31788;
                goto LABEL_988;
              case 1284:
                v10 = -31276;
                goto LABEL_988;
              case 1286:
                v10 = -30764;
                goto LABEL_988;
              case 1288:
                v10 = -30252;
                goto LABEL_988;
              case 1290:
                v10 = -29740;
                goto LABEL_988;
              case 1292:
                v10 = -29228;
                goto LABEL_988;
              case 1294:
                v10 = -28716;
                goto LABEL_988;
              case 1296:
                v10 = -28204;
                goto LABEL_988;
              case 1298:
                v10 = -27692;
                goto LABEL_988;
              case 1300:
                v10 = -27180;
                goto LABEL_988;
              case 1302:
                v10 = -26668;
                goto LABEL_988;
              case 1304:
                v10 = -26156;
                goto LABEL_988;
              case 1306:
                v10 = -25644;
                goto LABEL_988;
              case 1308:
                v10 = -25132;
                goto LABEL_988;
              case 1310:
                v10 = -24620;
                goto LABEL_988;
              case 1312:
                v10 = -24108;
                goto LABEL_988;
              case 1314:
                v10 = -23596;
                goto LABEL_988;
              case 1316:
                v10 = -23084;
                goto LABEL_988;
              case 1318:
                v10 = -22572;
                goto LABEL_988;
              case 1320:
                v10 = -22060;
                goto LABEL_988;
              case 1322:
                v10 = -21548;
                goto LABEL_988;
              case 1324:
                v10 = -21036;
                goto LABEL_988;
              case 1326:
                v10 = -20524;
                goto LABEL_988;
              case 1329:
                v10 = -24107;
                goto LABEL_988;
              case 1330:
                v10 = -23851;
                goto LABEL_988;
              case 1331:
                v10 = -23595;
                goto LABEL_988;
              case 1332:
                v10 = -23339;
                goto LABEL_988;
              case 1333:
                v10 = -23083;
                goto LABEL_988;
              case 1334:
                v10 = -22827;
                goto LABEL_988;
              case 1335:
                v10 = -22571;
                goto LABEL_988;
              case 1336:
                v10 = -22315;
                goto LABEL_988;
              case 1337:
                v10 = -22059;
                goto LABEL_988;
              case 1338:
                v10 = -21803;
                goto LABEL_988;
              case 1339:
                v10 = -21547;
                goto LABEL_988;
              case 1340:
                v10 = -21291;
                goto LABEL_988;
              case 1341:
                v10 = -21035;
                goto LABEL_988;
              case 1342:
                v10 = -20779;
                goto LABEL_988;
              case 1343:
                v10 = -20523;
                goto LABEL_988;
              case 1344:
                v10 = -20267;
                goto LABEL_988;
              case 1345:
                v10 = -20011;
                goto LABEL_988;
              case 1346:
                v10 = -19755;
                goto LABEL_988;
              case 1347:
                v10 = -19499;
                goto LABEL_988;
              case 1348:
                v10 = -19243;
                goto LABEL_988;
              case 1349:
                v10 = -18987;
                goto LABEL_988;
              case 1350:
                v10 = -18731;
                goto LABEL_988;
              case 1351:
                v10 = -18475;
                goto LABEL_988;
              case 1352:
                v10 = -18219;
                goto LABEL_988;
              case 1353:
                v10 = -17963;
                goto LABEL_988;
              case 1354:
                v10 = -17707;
                goto LABEL_988;
              case 1355:
                v10 = -17451;
                goto LABEL_988;
              case 1356:
                v10 = -17195;
                goto LABEL_988;
              case 1357:
                v10 = -16939;
                goto LABEL_988;
              case 1358:
                v10 = -16683;
                goto LABEL_988;
              case 1359:
                v10 = -16427;
                goto LABEL_988;
              case 1360:
                v10 = -32554;
                goto LABEL_988;
              case 1361:
                v10 = -32298;
                goto LABEL_988;
              case 1362:
                break;
              case 1363:
                v10 = -31786;
                goto LABEL_988;
              case 1364:
                v10 = -31530;
                goto LABEL_988;
              case 1365:
                v10 = -31274;
                goto LABEL_988;
              case 1366:
                v10 = -31018;
                goto LABEL_988;
              case 1415:
                LOWORD(v118) = -23083;
                cmark_strbuf_put(v7, &v118, 2);
                break;
              default:
                switch(v117)
                {
                  case 65:
                    v14 = 97;
                    goto LABEL_885;
                  case 66:
                    v14 = 98;
                    goto LABEL_885;
                  case 67:
                    v14 = 99;
                    goto LABEL_885;
                  case 68:
                    v14 = 100;
                    goto LABEL_885;
                  case 69:
                    v14 = 101;
                    goto LABEL_885;
                  case 70:
                    v14 = 102;
                    goto LABEL_885;
                  case 71:
                    v14 = 103;
                    goto LABEL_885;
                  case 72:
                    v14 = 104;
                    goto LABEL_885;
                  case 73:
                    v14 = 105;
                    goto LABEL_885;
                  case 74:
                    v14 = 106;
                    goto LABEL_885;
                  case 75:
                    goto LABEL_67;
                  case 76:
                    goto LABEL_197;
                  case 77:
                    v14 = 109;
                    goto LABEL_885;
                  case 78:
                    break;
                  case 79:
                    v14 = 111;
                    goto LABEL_885;
                  case 80:
                    v14 = 112;
                    goto LABEL_885;
                  case 81:
                    v14 = 113;
                    goto LABEL_885;
                  case 82:
                    v14 = 114;
                    goto LABEL_885;
                  case 83:
                  case 383:
                    v14 = 115;
                    goto LABEL_885;
                  case 84:
                    goto LABEL_126;
                  case 85:
                    v14 = 117;
                    goto LABEL_885;
                  case 86:
                    v14 = 118;
                    goto LABEL_885;
                  case 87:
                    v14 = 119;
                    goto LABEL_885;
                  case 88:
                    v14 = 120;
                    goto LABEL_885;
                  case 89:
                    v14 = 121;
                    goto LABEL_885;
                  case 90:
                    v14 = 122;
                    goto LABEL_885;
                  case 181:
                    v10 = -17202;
                    goto LABEL_988;
                  case 192:
                    v10 = -24381;
                    goto LABEL_988;
                  case 193:
                    v10 = -24125;
                    goto LABEL_988;
                  case 194:
                    v10 = -23869;
                    goto LABEL_988;
                  case 195:
                    v10 = -23613;
                    goto LABEL_988;
                  case 196:
                    v10 = -23357;
                    goto LABEL_988;
                  case 197:
                    goto LABEL_53;
                  case 198:
                    v10 = -22845;
                    goto LABEL_988;
                  case 199:
                    v10 = -22589;
                    goto LABEL_988;
                  case 200:
                    v10 = -22333;
                    goto LABEL_988;
                  case 201:
                    v10 = -22077;
                    goto LABEL_988;
                  case 202:
                    v10 = -21821;
                    goto LABEL_988;
                  case 203:
                    v10 = -21565;
                    goto LABEL_988;
                  case 204:
                    v10 = -21309;
                    goto LABEL_988;
                  case 205:
                    v10 = -21053;
                    goto LABEL_988;
                  case 206:
                    v10 = -20797;
                    goto LABEL_988;
                  case 207:
                    v10 = -20541;
                    goto LABEL_988;
                  case 208:
                    v10 = -20285;
                    goto LABEL_988;
                  case 209:
                    v10 = -20029;
                    goto LABEL_988;
                  case 210:
                    v10 = -19773;
                    goto LABEL_988;
                  case 211:
                    v10 = -19517;
                    goto LABEL_988;
                  case 212:
                    v10 = -19261;
                    goto LABEL_988;
                  case 213:
                    v10 = -19005;
                    goto LABEL_988;
                  case 214:
                    v10 = -18749;
                    goto LABEL_988;
                  case 216:
                    v10 = -18237;
                    goto LABEL_988;
                  case 217:
                    v10 = -17981;
                    goto LABEL_988;
                  case 218:
                    v10 = -17725;
                    goto LABEL_988;
                  case 219:
                    v10 = -17469;
                    goto LABEL_988;
                  case 220:
                    v10 = -17213;
                    goto LABEL_988;
                  case 221:
                    v10 = -16957;
                    goto LABEL_988;
                  case 222:
                    v10 = -16701;
                    goto LABEL_988;
                  case 223:
                    goto LABEL_155;
                  case 256:
                    v10 = -32316;
                    goto LABEL_988;
                  case 258:
                    v10 = -31804;
                    goto LABEL_988;
                  case 260:
                    v10 = -31292;
                    goto LABEL_988;
                  case 262:
                    v10 = -30780;
                    goto LABEL_988;
                  case 264:
                    v10 = -30268;
                    goto LABEL_988;
                  case 266:
                    v10 = -29756;
                    goto LABEL_988;
                  case 268:
                    v10 = -29244;
                    goto LABEL_988;
                  case 270:
                    v10 = -28732;
                    goto LABEL_988;
                  case 272:
                    v10 = -28220;
                    goto LABEL_988;
                  case 274:
                    v10 = -27708;
                    goto LABEL_988;
                  case 276:
                    v10 = -27196;
                    goto LABEL_988;
                  case 278:
                    v10 = -26684;
                    goto LABEL_988;
                  case 280:
                    v10 = -26172;
                    goto LABEL_988;
                  case 282:
                    v10 = -25660;
                    goto LABEL_988;
                  case 284:
                    v10 = -25148;
                    goto LABEL_988;
                  case 286:
                    v10 = -24636;
                    goto LABEL_988;
                  case 288:
                    v10 = -24124;
                    goto LABEL_988;
                  case 290:
                    v10 = -23612;
                    goto LABEL_988;
                  case 292:
                    v10 = -23100;
                    goto LABEL_988;
                  case 294:
                    v10 = -22588;
                    goto LABEL_988;
                  case 296:
                    v10 = -22076;
                    goto LABEL_988;
                  case 298:
                    v10 = -21564;
                    goto LABEL_988;
                  case 300:
                    v10 = -21052;
                    goto LABEL_988;
                  case 302:
                    v10 = -20540;
                    goto LABEL_988;
                  case 304:
                    LOBYTE(v118) = 105;
                    cmark_strbuf_put(v7, &v118, 1);
                    v10 = -30772;
                    goto LABEL_988;
                  case 306:
                    v10 = -19516;
                    goto LABEL_988;
                  case 308:
                    v10 = -19004;
                    goto LABEL_988;
                  case 310:
                    v10 = -18492;
                    goto LABEL_988;
                  case 313:
                    v10 = -17724;
                    goto LABEL_988;
                  case 315:
                    v10 = -17212;
                    goto LABEL_988;
                  case 317:
                    v10 = -16700;
                    goto LABEL_988;
                  case 319:
                    v10 = -32571;
                    goto LABEL_988;
                  case 321:
                    v10 = -32059;
                    goto LABEL_988;
                  case 323:
                    v10 = -31547;
                    goto LABEL_988;
                  case 325:
                    v10 = -31035;
                    goto LABEL_988;
                  case 327:
                    v10 = -30523;
                    goto LABEL_988;
                  case 329:
                    LOWORD(v118) = -17206;
                    cmark_strbuf_put(v7, &v118, 2);
                    break;
                  case 330:
                    v10 = -29755;
                    goto LABEL_988;
                  case 332:
                    v10 = -29243;
                    goto LABEL_988;
                  case 334:
                    v10 = -28731;
                    goto LABEL_988;
                  case 336:
                    v10 = -28219;
                    goto LABEL_988;
                  case 338:
                    v10 = -27707;
                    goto LABEL_988;
                  case 340:
                    v10 = -27195;
                    goto LABEL_988;
                  case 342:
                    v10 = -26683;
                    goto LABEL_988;
                  case 344:
                    v10 = -26171;
                    goto LABEL_988;
                  case 346:
                    v10 = -25659;
                    goto LABEL_988;
                  case 348:
                    v10 = -25147;
                    goto LABEL_988;
                  case 350:
                    v10 = -24635;
                    goto LABEL_988;
                  case 352:
                    v10 = -24123;
                    goto LABEL_988;
                  case 354:
                    v10 = -23611;
                    goto LABEL_988;
                  case 356:
                    v10 = -23099;
                    goto LABEL_988;
                  case 358:
                    v10 = -22587;
                    goto LABEL_988;
                  case 360:
                    v10 = -22075;
                    goto LABEL_988;
                  case 362:
                    v10 = -21563;
                    goto LABEL_988;
                  case 364:
                    v10 = -21051;
                    goto LABEL_988;
                  case 366:
                    v10 = -20539;
                    goto LABEL_988;
                  case 368:
                    v10 = -20027;
                    goto LABEL_988;
                  case 370:
                    v10 = -19515;
                    goto LABEL_988;
                  case 372:
                    v10 = -19003;
                    goto LABEL_988;
                  case 374:
                    v10 = -18491;
                    goto LABEL_988;
                  case 376:
                    v10 = -16445;
                    goto LABEL_988;
                  case 377:
                    v10 = -17723;
                    goto LABEL_988;
                  case 379:
                    v10 = -17211;
                    goto LABEL_988;
                  case 381:
                    v10 = -16699;
                    goto LABEL_988;
                  case 385:
                    v10 = -27703;
                    goto LABEL_988;
                  case 386:
                    v10 = -31802;
                    goto LABEL_988;
                  case 388:
                    v10 = -31290;
                    goto LABEL_988;
                  case 390:
                    v10 = -27447;
                    goto LABEL_988;
                  case 391:
                    v10 = -30522;
                    goto LABEL_988;
                  case 393:
                    v10 = -26935;
                    goto LABEL_988;
                  case 394:
                    v10 = -26679;
                    goto LABEL_988;
                  case 395:
                    v10 = -29498;
                    goto LABEL_988;
                  case 398:
                    v10 = -25145;
                    goto LABEL_988;
                  case 399:
                    v10 = -26167;
                    goto LABEL_988;
                  case 400:
                    v10 = -25655;
                    goto LABEL_988;
                  case 401:
                    v10 = -27962;
                    goto LABEL_988;
                  case 403:
                    v10 = -24375;
                    goto LABEL_988;
                  case 404:
                    v10 = -23607;
                    goto LABEL_988;
                  case 406:
                    v10 = -22071;
                    goto LABEL_988;
                  case 407:
                    v10 = -22327;
                    goto LABEL_988;
                  case 408:
                    v10 = -26170;
                    goto LABEL_988;
                  case 412:
                    v10 = -20535;
                    goto LABEL_988;
                  case 413:
                    v10 = -19767;
                    goto LABEL_988;
                  case 415:
                    v10 = -18999;
                    goto LABEL_988;
                  case 416:
                    v10 = -24122;
                    goto LABEL_988;
                  case 418:
                    v10 = -23610;
                    goto LABEL_988;
                  case 420:
                    v10 = -23098;
                    goto LABEL_988;
                  case 422:
                    v10 = -32566;
                    goto LABEL_988;
                  case 423:
                    v10 = -22330;
                    goto LABEL_988;
                  case 425:
                    v10 = -31798;
                    goto LABEL_988;
                  case 428:
                    v10 = -21050;
                    goto LABEL_988;
                  case 430:
                    v10 = -30518;
                    goto LABEL_988;
                  case 431:
                    v10 = -20282;
                    goto LABEL_988;
                  case 433:
                    v10 = -30006;
                    goto LABEL_988;
                  case 434:
                    v10 = -29750;
                    goto LABEL_988;
                  case 435:
                    v10 = -19258;
                    goto LABEL_988;
                  case 437:
                    v10 = -18746;
                    goto LABEL_988;
                  case 439:
                    v10 = -27958;
                    goto LABEL_988;
                  case 440:
                    v10 = -17978;
                    goto LABEL_988;
                  case 444:
                    v10 = -16954;
                    goto LABEL_988;
                  case 452:
                  case 453:
                    v10 = -31033;
                    goto LABEL_988;
                  case 455:
                  case 456:
                    v10 = -30265;
                    goto LABEL_988;
                  case 458:
                  case 459:
                    v10 = -29497;
                    goto LABEL_988;
                  case 461:
                    v10 = -28985;
                    goto LABEL_988;
                  case 463:
                    v10 = -28473;
                    goto LABEL_988;
                  case 465:
                    v10 = -27961;
                    goto LABEL_988;
                  case 467:
                    v10 = -27449;
                    goto LABEL_988;
                  case 469:
                    v10 = -26937;
                    goto LABEL_988;
                  case 471:
                    v10 = -26425;
                    goto LABEL_988;
                  case 473:
                    v10 = -25913;
                    goto LABEL_988;
                  case 475:
                    v10 = -25401;
                    goto LABEL_988;
                  case 478:
                    v10 = -24633;
                    goto LABEL_988;
                  case 480:
                    v10 = -24121;
                    goto LABEL_988;
                  case 482:
                    v10 = -23609;
                    goto LABEL_988;
                  case 484:
                    v10 = -23097;
                    goto LABEL_988;
                  case 486:
                    v10 = -22585;
                    goto LABEL_988;
                  case 488:
                    v10 = -22073;
                    goto LABEL_988;
                  case 490:
                    v10 = -21561;
                    goto LABEL_988;
                  case 492:
                    v10 = -21049;
                    goto LABEL_988;
                  case 494:
                    v10 = -20537;
                    goto LABEL_988;
                  case 496:
                    LOBYTE(v118) = 106;
                    cmark_strbuf_put(v7, &v118, 1);
                    v10 = -29492;
                    goto LABEL_988;
                  case 497:
                  case 498:
                    v10 = -19513;
                    goto LABEL_988;
                  case 500:
                    v10 = -19001;
                    goto LABEL_988;
                  case 502:
                    v10 = -27194;
                    goto LABEL_988;
                  case 503:
                    v10 = -16442;
                    goto LABEL_988;
                  case 504:
                    v10 = -17977;
                    goto LABEL_988;
                  case 506:
                    v10 = -17465;
                    goto LABEL_988;
                  case 508:
                    v10 = -16953;
                    goto LABEL_988;
                  case 510:
                    v10 = -16441;
                    goto LABEL_988;
                  case 512:
                    v10 = -32312;
                    goto LABEL_988;
                  case 514:
                    v10 = -31800;
                    goto LABEL_988;
                  case 516:
                    v10 = -31288;
                    goto LABEL_988;
                  case 518:
                    v10 = -30776;
                    goto LABEL_988;
                  case 520:
                    v10 = -30264;
                    goto LABEL_988;
                  case 522:
                    v10 = -29752;
                    goto LABEL_988;
                  case 524:
                    v10 = -29240;
                    goto LABEL_988;
                  case 526:
                    v10 = -28728;
                    goto LABEL_988;
                  case 528:
                    v10 = -28216;
                    goto LABEL_988;
                  case 530:
                    v10 = -27704;
                    goto LABEL_988;
                  case 532:
                    v10 = -27192;
                    goto LABEL_988;
                  case 534:
                    v10 = -26680;
                    goto LABEL_988;
                  case 536:
                    v10 = -26168;
                    goto LABEL_988;
                  case 538:
                    v10 = -25656;
                    goto LABEL_988;
                  case 540:
                    v10 = -25144;
                    goto LABEL_988;
                  case 542:
                    v10 = -24632;
                    goto LABEL_988;
                  case 544:
                    v10 = -24890;
                    goto LABEL_988;
                  case 546:
                    v10 = -23608;
                    goto LABEL_988;
                  case 548:
                    v10 = -23096;
                    goto LABEL_988;
                  case 550:
                    v10 = -22584;
                    goto LABEL_988;
                  case 552:
                    v10 = -22072;
                    goto LABEL_988;
                  case 554:
                    v10 = -21560;
                    goto LABEL_988;
                  case 556:
                    v10 = -21048;
                    goto LABEL_988;
                  case 558:
                    v10 = -20536;
                    goto LABEL_988;
                  case 560:
                    v10 = -20024;
                    goto LABEL_988;
                  case 562:
                    v10 = -19512;
                    goto LABEL_988;
                  case 570:
                    v37 = -19998;
                    goto LABEL_1483;
                  case 571:
                    v10 = -17208;
                    goto LABEL_988;
                  case 573:
                    v10 = -25914;
                    goto LABEL_988;
                  case 574:
                    v43 = -19998;
                    goto LABEL_1177;
                  case 577:
                    v10 = -32055;
                    goto LABEL_988;
                  case 579:
                    v10 = -32570;
                    goto LABEL_988;
                  case 580:
                    v10 = -30262;
                    goto LABEL_988;
                  case 581:
                    v10 = -29494;
                    goto LABEL_988;
                  case 582:
                    v10 = -30775;
                    goto LABEL_988;
                  case 584:
                    v10 = -30263;
                    goto LABEL_988;
                  case 586:
                    v10 = -29751;
                    goto LABEL_988;
                  case 588:
                    v10 = -29239;
                    goto LABEL_988;
                  case 590:
                    v10 = -28727;
                    goto LABEL_988;
                  default:
                    goto LABEL_199;
                }

                v14 = 110;
                goto LABEL_885;
            }

            v10 = -32042;
            goto LABEL_988;
          }

          if (v117 > 7302)
          {
            switch(v117)
            {
              case 7680:
                v20 = -18207;
                goto LABEL_1501;
              case 7681:
              case 7683:
              case 7685:
              case 7687:
              case 7689:
              case 7691:
              case 7693:
              case 7695:
              case 7697:
              case 7699:
              case 7701:
              case 7703:
              case 7705:
              case 7707:
              case 7709:
              case 7711:
              case 7713:
              case 7715:
              case 7717:
              case 7719:
              case 7721:
              case 7723:
              case 7725:
              case 7727:
              case 7729:
              case 7731:
              case 7733:
              case 7735:
              case 7737:
              case 7739:
              case 7741:
              case 7743:
              case 7745:
              case 7747:
              case 7749:
              case 7751:
              case 7753:
              case 7755:
              case 7757:
              case 7759:
              case 7761:
              case 7763:
              case 7765:
              case 7767:
              case 7769:
              case 7771:
              case 7773:
              case 7775:
              case 7777:
              case 7779:
              case 7781:
              case 7783:
              case 7785:
              case 7787:
              case 7789:
              case 7791:
              case 7793:
              case 7795:
              case 7797:
              case 7799:
              case 7801:
              case 7803:
              case 7805:
              case 7807:
              case 7809:
              case 7811:
              case 7813:
              case 7815:
              case 7817:
              case 7819:
              case 7821:
              case 7823:
              case 7825:
              case 7827:
              case 7829:
              case 7836:
              case 7837:
              case 7839:
              case 7841:
              case 7843:
              case 7845:
              case 7847:
              case 7849:
              case 7851:
              case 7853:
              case 7855:
              case 7857:
              case 7859:
              case 7861:
              case 7863:
              case 7865:
              case 7867:
              case 7869:
              case 7871:
              case 7873:
              case 7875:
              case 7877:
              case 7879:
              case 7881:
              case 7883:
              case 7885:
              case 7887:
              case 7889:
              case 7891:
              case 7893:
              case 7895:
              case 7897:
              case 7899:
              case 7901:
              case 7903:
              case 7905:
              case 7907:
              case 7909:
              case 7911:
              case 7913:
              case 7915:
              case 7917:
              case 7919:
              case 7921:
              case 7923:
              case 7925:
              case 7927:
              case 7929:
              case 7931:
              case 7933:
              case 7935:
              case 7936:
              case 7937:
              case 7938:
              case 7939:
              case 7940:
              case 7941:
              case 7942:
              case 7943:
              case 7952:
              case 7953:
              case 7954:
              case 7955:
              case 7956:
              case 7957:
              case 7958:
              case 7959:
              case 7966:
              case 7967:
              case 7968:
              case 7969:
              case 7970:
              case 7971:
              case 7972:
              case 7973:
              case 7974:
              case 7975:
              case 7984:
              case 7985:
              case 7986:
              case 7987:
              case 7988:
              case 7989:
              case 7990:
              case 7991:
              case 8000:
              case 8001:
              case 8002:
              case 8003:
              case 8004:
              case 8005:
              case 8006:
              case 8007:
              case 8014:
              case 8015:
              case 8017:
              case 8019:
              case 8021:
              case 8023:
              case 8024:
              case 8026:
              case 8028:
              case 8030:
              case 8032:
              case 8033:
              case 8034:
              case 8035:
              case 8036:
              case 8037:
              case 8038:
              case 8039:
              case 8048:
              case 8049:
              case 8050:
              case 8051:
              case 8052:
              case 8053:
              case 8054:
              case 8055:
              case 8056:
              case 8057:
              case 8058:
              case 8059:
              case 8060:
              case 8061:
              case 8062:
              case 8063:
              case 8112:
              case 8113:
              case 8117:
              case 8125:
              case 8127:
              case 8128:
              case 8129:
              case 8133:
              case 8141:
              case 8142:
              case 8143:
              case 8144:
              case 8145:
              case 8148:
              case 8149:
              case 8156:
              case 8157:
              case 8158:
              case 8159:
              case 8160:
              case 8161:
              case 8165:
              case 8173:
              case 8174:
              case 8175:
              case 8176:
              case 8177:
              case 8181:
                goto LABEL_199;
              case 7682:
                v84 = -18207;
                goto LABEL_1492;
              case 7684:
                v82 = -18207;
                goto LABEL_1496;
              case 7686:
                v83 = -18207;
                goto LABEL_1494;
              case 7688:
                v86 = -18207;
                goto LABEL_1478;
              case 7690:
                v62 = -18207;
                goto LABEL_1476;
              case 7692:
                v79 = -18207;
                goto LABEL_1518;
              case 7694:
                v88 = -18207;
                goto LABEL_1508;
              case 7696:
                v34 = -18207;
                goto LABEL_1485;
              case 7698:
                v32 = -18207;
                goto LABEL_1510;
              case 7700:
                v36 = -18207;
                goto LABEL_1490;
              case 7702:
                v33 = -18207;
                goto LABEL_1512;
              case 7704:
                v27 = -18207;
                goto LABEL_1487;
              case 7706:
                v24 = -18207;
                goto LABEL_1520;
              case 7708:
                v38 = -18207;
                goto LABEL_1503;
              case 7710:
                v31 = -18207;
                goto LABEL_1505;
              case 7712:
                v12 = -18207;
                goto LABEL_1498;
              case 7714:
                v18 = -18207;
                goto LABEL_1514;
              case 7716:
                v37 = -18207;
                goto LABEL_1483;
              case 7718:
                v44 = -18207;
                goto LABEL_1468;
              case 7720:
                v28 = -18207;
                goto LABEL_1472;
              case 7722:
                v92 = -18207;
                goto LABEL_1516;
              case 7724:
                v77 = -18207;
                goto LABEL_1481;
              case 7726:
                v91 = -18207;
                goto LABEL_1424;
              case 7728:
                v56 = -18207;
                goto LABEL_1322;
              case 7730:
                v58 = -18207;
                goto LABEL_1413;
              case 7732:
                v57 = -18207;
                goto LABEL_1447;
              case 7734:
                v54 = -18207;
                goto LABEL_1457;
              case 7736:
                v52 = -18207;
                goto LABEL_1409;
              case 7738:
                v55 = -18207;
                goto LABEL_1419;
              case 7740:
                v60 = -18207;
                goto LABEL_1431;
              case 7742:
                v61 = -18207;
                goto LABEL_1421;
              case 7744:
                v20 = -17951;
                goto LABEL_1501;
              case 7746:
                v84 = -17951;
                goto LABEL_1492;
              case 7748:
                v82 = -17951;
                goto LABEL_1496;
              case 7750:
                v83 = -17951;
                goto LABEL_1494;
              case 7752:
                v86 = -17951;
                goto LABEL_1478;
              case 7754:
                v62 = -17951;
                goto LABEL_1476;
              case 7756:
                v79 = -17951;
                goto LABEL_1518;
              case 7758:
                v88 = -17951;
                goto LABEL_1508;
              case 7760:
                v34 = -17951;
                goto LABEL_1485;
              case 7762:
                v32 = -17951;
                goto LABEL_1510;
              case 7764:
                v36 = -17951;
                goto LABEL_1490;
              case 7766:
                v33 = -17951;
                goto LABEL_1512;
              case 7768:
                v27 = -17951;
                goto LABEL_1487;
              case 7770:
                v24 = -17951;
                goto LABEL_1520;
              case 7772:
                v38 = -17951;
                goto LABEL_1503;
              case 7774:
                v31 = -17951;
                goto LABEL_1505;
              case 7776:
              case 7835:
                v12 = -17951;
                goto LABEL_1498;
              case 7778:
                v18 = -17951;
                goto LABEL_1514;
              case 7780:
                v37 = -17951;
                goto LABEL_1483;
              case 7782:
                v44 = -17951;
                goto LABEL_1468;
              case 7784:
                v28 = -17951;
                goto LABEL_1472;
              case 7786:
                v92 = -17951;
                goto LABEL_1516;
              case 7788:
                v77 = -17951;
                goto LABEL_1481;
              case 7790:
                v91 = -17951;
                goto LABEL_1424;
              case 7792:
                v56 = -17951;
                goto LABEL_1322;
              case 7794:
                v58 = -17951;
                goto LABEL_1413;
              case 7796:
                v57 = -17951;
                goto LABEL_1447;
              case 7798:
                v54 = -17951;
                goto LABEL_1457;
              case 7800:
                v52 = -17951;
                goto LABEL_1409;
              case 7802:
                v55 = -17951;
                goto LABEL_1419;
              case 7804:
                v60 = -17951;
                goto LABEL_1431;
              case 7806:
                v61 = -17951;
                goto LABEL_1421;
              case 7808:
                v20 = -17695;
                goto LABEL_1501;
              case 7810:
                v84 = -17695;
                goto LABEL_1492;
              case 7812:
                v82 = -17695;
                goto LABEL_1496;
              case 7814:
                v83 = -17695;
                goto LABEL_1494;
              case 7816:
                v86 = -17695;
                goto LABEL_1478;
              case 7818:
                v62 = -17695;
                goto LABEL_1476;
              case 7820:
                v79 = -17695;
                goto LABEL_1518;
              case 7822:
                v88 = -17695;
                goto LABEL_1508;
              case 7824:
                v34 = -17695;
                goto LABEL_1485;
              case 7826:
                v32 = -17695;
                goto LABEL_1510;
              case 7828:
                v36 = -17695;
                goto LABEL_1490;
              case 7830:
                LOBYTE(v118) = 104;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -20020;
                goto LABEL_988;
              case 7831:
                LOBYTE(v118) = 116;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -30516;
                goto LABEL_988;
              case 7832:
                v102 = 119;
                goto LABEL_1084;
              case 7833:
                v102 = 121;
LABEL_1084:
                LOBYTE(v118) = v102;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -30004;
                goto LABEL_988;
              case 7834:
                LOBYTE(v118) = 97;
                cmark_strbuf_put(v7, &v118, 1);
                v10 = -16694;
                goto LABEL_988;
              case 7838:
LABEL_155:
                v65 = 115;
                goto LABEL_1194;
              case 7840:
                v12 = -17695;
                goto LABEL_1498;
              case 7842:
                v18 = -17695;
                goto LABEL_1514;
              case 7844:
                v37 = -17695;
                goto LABEL_1483;
              case 7846:
                v44 = -17695;
                goto LABEL_1468;
              case 7848:
                v28 = -17695;
                goto LABEL_1472;
              case 7850:
                v92 = -17695;
                goto LABEL_1516;
              case 7852:
                v77 = -17695;
                goto LABEL_1481;
              case 7854:
                v91 = -17695;
                goto LABEL_1424;
              case 7856:
                v56 = -17695;
                goto LABEL_1322;
              case 7858:
                v58 = -17695;
                goto LABEL_1413;
              case 7860:
                v57 = -17695;
                goto LABEL_1447;
              case 7862:
                v54 = -17695;
                goto LABEL_1457;
              case 7864:
                v52 = -17695;
                goto LABEL_1409;
              case 7866:
                v55 = -17695;
                goto LABEL_1419;
              case 7868:
                v60 = -17695;
                goto LABEL_1431;
              case 7870:
                v61 = -17695;
                goto LABEL_1421;
              case 7872:
                v20 = -17439;
                goto LABEL_1501;
              case 7874:
                v84 = -17439;
                goto LABEL_1492;
              case 7876:
                v82 = -17439;
                goto LABEL_1496;
              case 7878:
                v83 = -17439;
                goto LABEL_1494;
              case 7880:
                v86 = -17439;
                goto LABEL_1478;
              case 7882:
                v62 = -17439;
                goto LABEL_1476;
              case 7884:
                v79 = -17439;
                goto LABEL_1518;
              case 7886:
                v88 = -17439;
                goto LABEL_1508;
              case 7888:
                v34 = -17439;
                goto LABEL_1485;
              case 7890:
                v32 = -17439;
                goto LABEL_1510;
              case 7892:
                v36 = -17439;
                goto LABEL_1490;
              case 7894:
                v33 = -17439;
                goto LABEL_1512;
              case 7896:
                v27 = -17439;
                goto LABEL_1487;
              case 7898:
                v24 = -17439;
                goto LABEL_1520;
              case 7900:
                v38 = -17439;
                goto LABEL_1503;
              case 7902:
                v31 = -17439;
                goto LABEL_1505;
              case 7904:
                v12 = -17439;
                goto LABEL_1498;
              case 7906:
                v18 = -17439;
                goto LABEL_1514;
              case 7908:
                v37 = -17439;
                goto LABEL_1483;
              case 7910:
                v44 = -17439;
                goto LABEL_1468;
              case 7912:
                v28 = -17439;
                goto LABEL_1472;
              case 7914:
                v92 = -17439;
                goto LABEL_1516;
              case 7916:
                v77 = -17439;
                goto LABEL_1481;
              case 7918:
                v91 = -17439;
                goto LABEL_1424;
              case 7920:
                v56 = -17439;
                goto LABEL_1322;
              case 7922:
                v58 = -17439;
                goto LABEL_1413;
              case 7924:
                v57 = -17439;
                goto LABEL_1447;
              case 7926:
                v54 = -17439;
                goto LABEL_1457;
              case 7928:
                v52 = -17439;
                goto LABEL_1409;
              case 7930:
                v55 = -17439;
                goto LABEL_1419;
              case 7932:
                v60 = -17439;
                goto LABEL_1431;
              case 7934:
                v61 = -17439;
                goto LABEL_1421;
              case 7944:
                v17 = -17183;
                goto LABEL_1285;
              case 7945:
                v20 = -17183;
                goto LABEL_1501;
              case 7946:
                v78 = -17183;
                goto LABEL_1288;
              case 7947:
                v84 = -17183;
                goto LABEL_1492;
              case 7948:
                v47 = -17183;
                goto LABEL_1291;
              case 7949:
                v82 = -17183;
                goto LABEL_1496;
              case 7950:
                v81 = -17183;
                goto LABEL_1275;
              case 7951:
                v83 = -17183;
                goto LABEL_1494;
              case 7960:
                v13 = -17183;
                goto LABEL_1339;
              case 7961:
                v34 = -17183;
                goto LABEL_1485;
              case 7962:
                v30 = -17183;
                goto LABEL_1269;
              case 7963:
                v32 = -17183;
                goto LABEL_1510;
              case 7964:
                v25 = -17183;
                goto LABEL_1293;
              case 7965:
                v36 = -17183;
                goto LABEL_1490;
              case 7976:
                v11 = -17183;
                goto LABEL_1151;
              case 7977:
                v12 = -17183;
                goto LABEL_1498;
              case 7978:
                v40 = -17183;
                goto LABEL_1157;
              case 7979:
                v18 = -17183;
                goto LABEL_1514;
              case 7980:
                v35 = -17183;
                goto LABEL_1208;
              case 7981:
                v37 = -17183;
                goto LABEL_1483;
              case 7982:
                v43 = -17183;
                goto LABEL_1177;
              case 7983:
                v44 = -17183;
                goto LABEL_1468;
              case 7992:
                v16 = -17183;
                goto LABEL_1050;
              case 7993:
                v56 = -17183;
                goto LABEL_1322;
              case 7994:
                v21 = -17183;
                goto LABEL_1320;
              case 7995:
                v58 = -17183;
                goto LABEL_1413;
              case 7996:
                v59 = -17183;
                goto LABEL_1308;
              case 7997:
                v57 = -17183;
                goto LABEL_1447;
              case 7998:
                v50 = -17183;
                goto LABEL_1298;
              case 7999:
                v54 = -17183;
                goto LABEL_1457;
              case 8008:
                v17 = -16927;
                goto LABEL_1285;
              case 8009:
                v20 = -16927;
                goto LABEL_1501;
              case 8010:
                v78 = -16927;
                goto LABEL_1288;
              case 8011:
                v84 = -16927;
                goto LABEL_1492;
              case 8012:
                v47 = -16927;
                goto LABEL_1291;
              case 8013:
                v82 = -16927;
                goto LABEL_1496;
              case 8016:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -27700;
                goto LABEL_988;
              case 8018:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v101 = -27700;
                goto LABEL_1059;
              case 8020:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v64 = -27700;
                goto LABEL_154;
              case 8022:
                LOWORD(v118) = -31281;
                cmark_strbuf_put(v7, &v118, 2);
                v93 = -27700;
                goto LABEL_1013;
              case 8025:
                v34 = -16927;
                goto LABEL_1485;
              case 8027:
                v32 = -16927;
                goto LABEL_1510;
              case 8029:
                v36 = -16927;
                goto LABEL_1490;
              case 8031:
                v33 = -16927;
                goto LABEL_1512;
              case 8040:
                v11 = -16927;
                goto LABEL_1151;
              case 8041:
                v12 = -16927;
                goto LABEL_1498;
              case 8042:
                v40 = -16927;
                goto LABEL_1157;
              case 8043:
                v18 = -16927;
                goto LABEL_1514;
              case 8044:
                v35 = -16927;
                goto LABEL_1208;
              case 8045:
                v37 = -16927;
                goto LABEL_1483;
              case 8046:
                v43 = -16927;
                goto LABEL_1177;
              case 8047:
                v44 = -16927;
                goto LABEL_1468;
              case 8064:
              case 8072:
                LOWORD(v118) = -17183;
                v66 = 0x80;
                goto LABEL_985;
              case 8065:
              case 8073:
                LOWORD(v118) = -17183;
                v66 = -127;
                goto LABEL_985;
              case 8066:
              case 8074:
                LOWORD(v118) = -17183;
                v66 = -126;
                goto LABEL_985;
              case 8067:
              case 8075:
                LOWORD(v118) = -17183;
                v66 = -125;
                goto LABEL_985;
              case 8068:
              case 8076:
                LOWORD(v118) = -17183;
                v66 = -124;
                goto LABEL_985;
              case 8069:
              case 8077:
                LOWORD(v118) = -17183;
                v66 = -123;
                goto LABEL_985;
              case 8070:
              case 8078:
                LOWORD(v118) = -17183;
                v66 = -122;
                goto LABEL_985;
              case 8071:
              case 8079:
                LOWORD(v118) = -17183;
                v66 = -121;
                goto LABEL_985;
              case 8080:
              case 8088:
                v67 = -17183;
                goto LABEL_169;
              case 8081:
              case 8089:
                v68 = -17183;
                goto LABEL_175;
              case 8082:
              case 8090:
                v71 = -17183;
                goto LABEL_178;
              case 8083:
              case 8091:
                v69 = -17183;
                goto LABEL_165;
              case 8084:
              case 8092:
                v76 = -17183;
                goto LABEL_187;
              case 8085:
              case 8093:
                v75 = -17183;
                goto LABEL_185;
              case 8086:
              case 8094:
                v70 = -17183;
                goto LABEL_163;
              case 8087:
              case 8095:
                v72 = -17183;
                goto LABEL_189;
              case 8096:
              case 8104:
                v67 = -16927;
LABEL_169:
                LOWORD(v118) = v67;
                v66 = -96;
                goto LABEL_985;
              case 8097:
              case 8105:
                v68 = -16927;
LABEL_175:
                LOWORD(v118) = v68;
                v66 = -95;
                goto LABEL_985;
              case 8098:
              case 8106:
                v71 = -16927;
LABEL_178:
                LOWORD(v118) = v71;
                v66 = -94;
                goto LABEL_985;
              case 8099:
              case 8107:
                v69 = -16927;
LABEL_165:
                LOWORD(v118) = v69;
                v66 = -93;
                goto LABEL_985;
              case 8100:
              case 8108:
                v76 = -16927;
LABEL_187:
                LOWORD(v118) = v76;
                v66 = -92;
                goto LABEL_985;
              case 8101:
              case 8109:
                v75 = -16927;
LABEL_185:
                LOWORD(v118) = v75;
                v66 = -91;
                goto LABEL_985;
              case 8102:
              case 8110:
                v70 = -16927;
LABEL_163:
                LOWORD(v118) = v70;
                v66 = -90;
                goto LABEL_985;
              case 8103:
              case 8111:
                v72 = -16927;
LABEL_189:
                LOWORD(v118) = v72;
                v66 = -89;
                goto LABEL_985;
              case 8114:
                LOWORD(v118) = -16927;
                v66 = -80;
                goto LABEL_985;
              case 8115:
              case 8124:
                v74 = -20018;
                goto LABEL_1036;
              case 8116:
                v74 = -21298;
                goto LABEL_1036;
              case 8118:
                v93 = -20018;
                goto LABEL_1013;
              case 8119:
                v94 = -20018;
                goto LABEL_1028;
              case 8120:
                v16 = -16671;
                goto LABEL_1050;
              case 8121:
                v56 = -16671;
                goto LABEL_1322;
              case 8122:
                v16 = -16927;
                goto LABEL_1050;
              case 8123:
                v56 = -16927;
                goto LABEL_1322;
              case 8126:
                goto LABEL_987;
              case 8130:
                LOWORD(v118) = -16927;
                v66 = -76;
LABEL_985:
                BYTE2(v118) = v66;
                v96 = v7;
                v97 = 3;
                goto LABEL_986;
              case 8131:
              case 8140:
                v74 = -18482;
                goto LABEL_1036;
              case 8132:
                v74 = -20786;
                goto LABEL_1036;
              case 8134:
                v93 = -18482;
                goto LABEL_1013;
              case 8135:
                v94 = -18482;
LABEL_1028:
                LOWORD(v118) = v94;
                cmark_strbuf_put(v7, &v118, 2);
                v74 = -32051;
LABEL_1036:
                LOWORD(v118) = v74;
                v96 = v7;
                v97 = 2;
LABEL_986:
                cmark_strbuf_put(v96, &v118, v97);
LABEL_987:
                v10 = -17970;
                goto LABEL_988;
              case 8136:
                v21 = -16927;
                goto LABEL_1320;
              case 8137:
                v58 = -16927;
                goto LABEL_1413;
              case 8138:
                v59 = -16927;
                goto LABEL_1308;
              case 8139:
                v57 = -16927;
                goto LABEL_1447;
              case 8146:
                v95 = -17970;
                goto LABEL_1040;
              case 8147:
LABEL_152:
                v63 = -17970;
                goto LABEL_153;
              case 8150:
                v93 = -17970;
                goto LABEL_1013;
              case 8151:
                v100 = -17970;
                goto LABEL_1003;
              case 8152:
                v13 = -16415;
                goto LABEL_1339;
              case 8153:
                v34 = -16415;
                goto LABEL_1485;
              case 8154:
                v50 = -16927;
                goto LABEL_1298;
              case 8155:
                v54 = -16927;
                goto LABEL_1457;
              case 8162:
                v95 = -31281;
LABEL_1040:
                LOWORD(v118) = v95;
                cmark_strbuf_put(v7, &v118, 2);
                v101 = -30516;
LABEL_1059:
                LOWORD(v118) = v101;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -32564;
                goto LABEL_988;
              case 8163:
LABEL_151:
                v63 = -31281;
LABEL_153:
                LOWORD(v118) = v63;
                cmark_strbuf_put(v7, &v118, 2);
                v64 = -30516;
LABEL_154:
                LOWORD(v118) = v64;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -32308;
                goto LABEL_988;
              case 8164:
                LOWORD(v118) = -32305;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -27700;
                goto LABEL_988;
              case 8166:
                v93 = -31281;
                goto LABEL_1013;
              case 8167:
                v100 = -31281;
LABEL_1003:
                LOWORD(v118) = v100;
                cmark_strbuf_put(v7, &v118, 2);
                v93 = -30516;
                goto LABEL_1013;
              case 8168:
                v11 = -16415;
                goto LABEL_1151;
              case 8169:
                v12 = -16415;
                goto LABEL_1498;
              case 8170:
                v53 = -16927;
                goto LABEL_1415;
              case 8171:
                v55 = -16927;
                goto LABEL_1419;
              case 8172:
                v37 = -16415;
                goto LABEL_1483;
              case 8178:
                LOWORD(v118) = -16927;
                BYTE2(v118) = -68;
                v98 = v7;
                v99 = 3;
                goto LABEL_1018;
              case 8179:
              case 8188:
                v73 = -30257;
                goto LABEL_1017;
              case 8180:
                v73 = -28977;
                goto LABEL_1017;
              case 8182:
                v93 = -30257;
LABEL_1013:
                LOWORD(v118) = v93;
                cmark_strbuf_put(v7, &v118, 2);
                v10 = -32051;
                goto LABEL_988;
              case 8183:
                LOWORD(v118) = -30257;
                cmark_strbuf_put(v7, &v118, 2);
                v73 = -32051;
LABEL_1017:
                LOWORD(v118) = v73;
                v98 = v7;
                v99 = 2;
LABEL_1018:
                cmark_strbuf_put(v98, &v118, v99);
                v10 = -17970;
                goto LABEL_988;
              case 8184:
                v51 = -16927;
                goto LABEL_1312;
              case 8185:
                v52 = -16927;
                goto LABEL_1409;
              case 8186:
                v46 = -16927;
                goto LABEL_1389;
              case 8187:
                v60 = -16927;
                goto LABEL_1431;
              default:
                if (v117 == 7303)
                {
                  v10 = -23599;
                  goto LABEL_988;
                }

                if (v117 != 7304)
                {
                  goto LABEL_199;
                }

                break;
            }

LABEL_134:
            v62 = -26134;
LABEL_1476:
            LOWORD(v118) = v62;
            v49 = -117;
            goto LABEL_1521;
          }

          if (v117 <= 5111)
          {
            switch(v117)
            {
              case 4256:
                v17 = -19230;
                goto LABEL_1285;
              case 4257:
                v20 = -19230;
                goto LABEL_1501;
              case 4258:
                v78 = -19230;
                goto LABEL_1288;
              case 4259:
                v84 = -19230;
                goto LABEL_1492;
              case 4260:
                v47 = -19230;
                goto LABEL_1291;
              case 4261:
                v82 = -19230;
                goto LABEL_1496;
              case 4262:
                v81 = -19230;
                goto LABEL_1275;
              case 4263:
                v83 = -19230;
                goto LABEL_1494;
              case 4264:
                v80 = -19230;
                goto LABEL_1273;
              case 4265:
                v86 = -19230;
                goto LABEL_1478;
              case 4266:
                v87 = -19230;
                goto LABEL_1318;
              case 4267:
                v62 = -19230;
                goto LABEL_1476;
              case 4268:
                v85 = -19230;
                goto LABEL_1453;
              case 4269:
                v79 = -19230;
                goto LABEL_1518;
              case 4270:
                v45 = -19230;
                goto LABEL_1346;
              case 4271:
                v88 = -19230;
                goto LABEL_1508;
              case 4272:
                v13 = -19230;
                goto LABEL_1339;
              case 4273:
                v34 = -19230;
                goto LABEL_1485;
              case 4274:
                v30 = -19230;
                goto LABEL_1269;
              case 4275:
                v32 = -19230;
                goto LABEL_1510;
              case 4276:
                v25 = -19230;
                goto LABEL_1293;
              case 4277:
                v36 = -19230;
                goto LABEL_1490;
              case 4278:
                v39 = -19230;
                goto LABEL_1332;
              case 4279:
                v33 = -19230;
                goto LABEL_1512;
              case 4280:
                v42 = -19230;
                goto LABEL_1263;
              case 4281:
                v27 = -19230;
                goto LABEL_1487;
              case 4282:
                v41 = -19230;
                goto LABEL_1296;
              case 4283:
                v24 = -19230;
                goto LABEL_1520;
              case 4284:
                v26 = -19230;
                goto LABEL_1257;
              case 4285:
                v38 = -19230;
                goto LABEL_1503;
              case 4286:
                v23 = -19230;
                goto LABEL_1282;
              case 4287:
                v31 = -19230;
                goto LABEL_1505;
              case 4288:
                v11 = -19230;
                goto LABEL_1151;
              case 4289:
                v12 = -19230;
                goto LABEL_1498;
              case 4290:
                v40 = -19230;
                goto LABEL_1157;
              case 4291:
                v18 = -19230;
                goto LABEL_1514;
              case 4292:
                v35 = -19230;
                goto LABEL_1208;
              case 4293:
                v37 = -19230;
                goto LABEL_1483;
              case 4295:
                v44 = -19230;
                goto LABEL_1468;
              case 4301:
                v77 = -19230;
                goto LABEL_1481;
              default:
                goto LABEL_199;
            }
          }

          if (v117 > 7295)
          {
            if (v117 > 7298)
            {
              if (v117 > 7300)
              {
                if (v117 != 7301)
                {
                  v10 = -29999;
                  goto LABEL_988;
                }
              }

              else if (v117 == 7299)
              {
                v10 = -32303;
                goto LABEL_988;
              }

              v10 = -32047;
              goto LABEL_988;
            }

            if (v117 == 7296)
            {
              v10 = -19760;
            }

            else if (v117 == 7297)
            {
              v10 = -19248;
            }

            else
            {
              v10 = -16688;
            }

LABEL_988:
            LOWORD(v118) = v10;
            v89 = v7;
            v90 = 2;
            goto LABEL_1522;
          }

          if (v117 <= 5114)
          {
            if (v117 == 5112)
            {
              v16 = -28703;
LABEL_1050:
              LOWORD(v118) = v16;
              v49 = -80;
            }

            else if (v117 == 5113)
            {
              v56 = -28703;
LABEL_1322:
              LOWORD(v118) = v56;
              v49 = -79;
            }

            else
            {
              v21 = -28703;
LABEL_1320:
              LOWORD(v118) = v21;
              v49 = -78;
            }

            goto LABEL_1521;
          }

          switch(v117)
          {
            case 5115:
              v58 = -28703;
LABEL_1413:
              LOWORD(v118) = v58;
              v49 = -77;
LABEL_1521:
              BYTE2(v118) = v49;
              v89 = v7;
              v90 = 3;
              goto LABEL_1522;
            case 5116:
              v59 = -28703;
LABEL_1308:
              LOWORD(v118) = v59;
              v49 = -76;
              goto LABEL_1521;
            case 5117:
              v57 = -28703;
LABEL_1447:
              LOWORD(v118) = v57;
              v49 = -75;
              goto LABEL_1521;
          }
        }

LABEL_199:
        result = cmark_utf8proc_encode_char(v117, v7);
      }

LABEL_1523:
      a2 += v9;
      v116 = __OFSUB__(v5, v9);
      v5 -= v9;
    }

    while (!((v5 < 0) ^ v116 | (v5 == 0)));
  }

  return result;
}