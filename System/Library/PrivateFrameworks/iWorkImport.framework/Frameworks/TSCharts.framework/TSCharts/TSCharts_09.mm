uint64_t *sub_2763BC270(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763ADF94(result);

    return sub_2763B9BB0(v4, a2);
  }

  return result;
}

uint64_t sub_2763BC2BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_2763986E8(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_276398CCC(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_276398CCC(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_2763986E8(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_2763986E8(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    v4 = *(a1 + 176);
    if ((*(v4 + 16) & 1) != 0 && (*(*(v4 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x20000) != 0)
  {
    v5 = *(a1 + 184);
    if ((*(v5 + 16) & 1) != 0 && (*(*(v5 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x40000) != 0)
  {
    v6 = *(a1 + 192);
    if ((*(v6 + 16) & 1) != 0 && (*(*(v6 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x80000) != 0)
  {
    v7 = *(a1 + 200);
    if ((*(v7 + 16) & 1) != 0 && (*(*(v7 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 280));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 288));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 296)), result))
  {
    v8 = *(a1 + 20);
    if (v8)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 2) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 4) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 8) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x10) != 0)
    {
      result = sub_276398CCC(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x20) != 0)
    {
      result = sub_276398CCC(*(a1 + 344));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x40) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x80) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x100) != 0)
    {
      result = sub_276398CCC(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x200) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 376));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x400) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 384));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x800) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x1000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 400));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x2000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x4000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 416));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x8000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 424));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x10000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 432));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x20000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 440));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x40000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 448));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x80000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 456));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x100000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 464));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x200000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x400000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x800000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 488));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x1000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 496));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x2000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 504));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x4000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 512));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x8000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 520));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x10000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 528));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x20000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 536));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x40000000) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 544));
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 20);
    }

    if ((v8 & 0x80000000) == 0 || (result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 552)), result))
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 560));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 2) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 568));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 4) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 576));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 8) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 584));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x10) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 592));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x20) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 600));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x40) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 608));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x80) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 616));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x100) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 624));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x200) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 632));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x400) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 640));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x800) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 648));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x1000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 656));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x2000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 664));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x4000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 672));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x8000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 680));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x10000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 688));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x20000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 696));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x40000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 704));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x80000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 712));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x100000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 720));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x200000) != 0)
      {
        result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 728));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x400000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 736));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x800000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 744));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x1000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 752));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x2000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 760));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x4000000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 768));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x8000000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 776));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x10000000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 784));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x20000000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 792));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x40000000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 800));
        if (!result)
        {
          return result;
        }

        v9 = *(a1 + 24);
      }

      if ((v9 & 0x80000000) == 0 || (result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 808)), result))
      {
        v10 = *(a1 + 28);
        if (v10)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 816));
          if (!result)
          {
            return result;
          }

          v10 = *(a1 + 28);
        }

        if ((v10 & 2) == 0)
        {
          return 1;
        }

        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 824));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_2763BCAE8(uint64_t *a1)
{
  sub_2763BCB1C(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763BCB1C(uint64_t *result)
{
  if (result != &qword_2812EF0E0)
  {
    v1 = result;
    if (result[7])
    {
      v2 = MEMORY[0x277C978D0]();
      MEMORY[0x277C98580](v2, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v3 = MEMORY[0x277C978D0]();
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v4 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v4, 0x10A1C4030AC051BLL);
    }

    if (v1[10])
    {
      v5 = MEMORY[0x277C978D0]();
      MEMORY[0x277C98580](v5, 0x10A1C40D4912B22);
    }

    if (v1[11])
    {
      v6 = MEMORY[0x277C978D0]();
      MEMORY[0x277C98580](v6, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v7 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v7, 0x10A1C4034CD354FLL);
    }

    if (v1[13])
    {
      v8 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v9 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v9, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v10 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v10, 0x10A1C4030AC051BLL);
    }

    if (v1[16])
    {
      v11 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v11, 0x10A1C4030AC051BLL);
    }

    if (v1[17])
    {
      v12 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v12, 0x10A1C404E50D5EBLL);
    }

    if (v1[18])
    {
      v13 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v13, 0x10A1C404E50D5EBLL);
    }

    if (v1[19])
    {
      v14 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v14, 0x10A1C404E50D5EBLL);
    }

    if (v1[20])
    {
      v15 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v15, 0x10A1C404E50D5EBLL);
    }

    if (v1[21])
    {
      v16 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v16, 0x10A1C404E50D5EBLL);
    }

    if (v1[22])
    {
      v17 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v17, 0x10A1C404E50D5EBLL);
    }

    if (v1[23])
    {
      v18 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v18, 0x10A1C404E50D5EBLL);
    }

    if (v1[24])
    {
      v19 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v19, 0x10A1C404E50D5EBLL);
    }

    if (v1[25])
    {
      v20 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v20, 0x10A1C404E50D5EBLL);
    }

    if (v1[26])
    {
      v21 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v21, 0x10A1C404E50D5EBLL);
    }

    if (v1[27])
    {
      v22 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v22, 0x10A1C404E50D5EBLL);
    }

    if (v1[28])
    {
      v23 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v23, 0x10A1C404E50D5EBLL);
    }

    if (v1[29])
    {
      v24 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v24, 0x10A1C404E50D5EBLL);
    }

    if (v1[30])
    {
      v25 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v25, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v26 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v26, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v27 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v27, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v28 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v28, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v29 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v29, 0x10A1C40D4912B22);
    }

    if (v1[35])
    {
      v30 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v30, 0x10A1C40D4912B22);
    }

    if (v1[36])
    {
      v31 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v31, 0x10A1C40D4912B22);
    }

    if (v1[37])
    {
      v32 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v32, 0x10A1C40D4912B22);
    }

    if (v1[38])
    {
      v33 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v33, 0x10A1C40D4912B22);
    }

    if (v1[39])
    {
      v34 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v34, 0x10A1C40D4912B22);
    }

    if (v1[40])
    {
      v35 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v35, 0x10A1C40D4912B22);
    }

    if (v1[41])
    {
      v36 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v36, 0x10A1C40D4912B22);
    }

    if (v1[42])
    {
      v37 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v37, 0x10A1C40D4912B22);
    }

    if (v1[43])
    {
      v38 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v38, 0x10A1C40D4912B22);
    }

    if (v1[44])
    {
      v39 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v39, 0x10A1C40D4912B22);
    }

    if (v1[45])
    {
      v40 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v40, 0x10A1C40D4912B22);
    }

    if (v1[46])
    {
      v41 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v41, 0x10A1C40D4912B22);
    }

    if (v1[47])
    {
      v42 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v42, 0x10A1C40D4912B22);
    }

    if (v1[48])
    {
      v43 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v43, 0x10A1C4034CD354FLL);
    }

    if (v1[49])
    {
      v44 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v44, 0x10A1C4034CD354FLL);
    }

    if (v1[50])
    {
      v45 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v45, 0x10A1C4034CD354FLL);
    }

    if (v1[51])
    {
      v46 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v46, 0x10A1C4034CD354FLL);
    }

    if (v1[52])
    {
      v47 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v47, 0x10A1C4034CD354FLL);
    }

    if (v1[53])
    {
      v48 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v48, 0x10A1C4034CD354FLL);
    }

    if (v1[54])
    {
      v49 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v49, 0x10A1C4034CD354FLL);
    }

    if (v1[55])
    {
      v50 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v50, 0x10A1C4034CD354FLL);
    }

    if (v1[56])
    {
      v51 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v51, 0x10A1C4034CD354FLL);
    }

    if (v1[57])
    {
      v52 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v52, 0x10A1C4034CD354FLL);
    }

    if (v1[58])
    {
      v53 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v53, 0x10A1C4034CD354FLL);
    }

    if (v1[59])
    {
      v54 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v54, 0x10A1C4034CD354FLL);
    }

    if (v1[60])
    {
      v55 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v55, 0x10A1C4034CD354FLL);
    }

    if (v1[61])
    {
      v56 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v56, 0x10A1C4034CD354FLL);
    }

    if (v1[62])
    {
      v57 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v57, 0x10A1C4034CD354FLL);
    }

    if (v1[63])
    {
      v58 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v58, 0x10A1C4034CD354FLL);
    }

    if (v1[64])
    {
      v59 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v59, 0x10A1C4030AC051BLL);
    }

    if (v1[65])
    {
      v60 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v60, 0x10A1C4030AC051BLL);
    }

    if (v1[66])
    {
      v61 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v61, 0x10A1C4030AC051BLL);
    }

    if (v1[67])
    {
      v62 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v62, 0x10A1C4030AC051BLL);
    }

    if (v1[68])
    {
      v63 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v63, 0x10A1C4030AC051BLL);
    }

    if (v1[69])
    {
      v64 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v64, 0x10A1C4030AC051BLL);
    }

    if (v1[70])
    {
      v65 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v65, 0x10A1C4030AC051BLL);
    }

    if (v1[71])
    {
      v66 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v66, 0x10A1C4030AC051BLL);
    }

    if (v1[72])
    {
      v67 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v67, 0x10A1C4030AC051BLL);
    }

    if (v1[73])
    {
      v68 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v68, 0x10A1C4030AC051BLL);
    }

    if (v1[74])
    {
      v69 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v69, 0x10A1C404E50D5EBLL);
    }

    if (v1[75])
    {
      v70 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v70, 0x10A1C404E50D5EBLL);
    }

    if (v1[76])
    {
      v71 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v71, 0x10A1C404E50D5EBLL);
    }

    if (v1[77])
    {
      v72 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v72, 0x10A1C404E50D5EBLL);
    }

    if (v1[78])
    {
      v73 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v73, 0x10A1C404E50D5EBLL);
    }

    if (v1[79])
    {
      v74 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v74, 0x10A1C404E50D5EBLL);
    }

    if (v1[80])
    {
      v75 = MEMORY[0x277C97810]();
      MEMORY[0x277C98580](v75, 0x10A1C404E50D5EBLL);
    }

    if (v1[81])
    {
      v76 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v76, 0x10A1C40D4912B22);
    }

    if (v1[82])
    {
      v77 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v77, 0x10A1C40D4912B22);
    }

    if (v1[83])
    {
      v78 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v78, 0x10A1C40D4912B22);
    }

    if (v1[84])
    {
      v79 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v79, 0x10A1C40D4912B22);
    }

    if (v1[85])
    {
      v80 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v80, 0x10A1C40D4912B22);
    }

    if (v1[86])
    {
      v81 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v81, 0x10A1C40D4912B22);
    }

    if (v1[87])
    {
      v82 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v82, 0x10A1C40D4912B22);
    }

    if (v1[88])
    {
      v83 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v83, 0x10A1C40D4912B22);
    }

    if (v1[89])
    {
      v84 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v84, 0x10A1C40D4912B22);
    }

    if (v1[90])
    {
      v85 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v85, 0x10A1C40D4912B22);
    }

    if (v1[91])
    {
      v86 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v86, 0x10A1C40D4912B22);
    }

    if (v1[92])
    {
      v87 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v87, 0x10A1C40D4912B22);
    }

    if (v1[93])
    {
      v88 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v88, 0x10A1C40D4912B22);
    }

    if (v1[94])
    {
      v89 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v89, 0x10A1C40D4912B22);
    }

    if (v1[95])
    {
      v90 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v90, 0x10A1C40D4912B22);
    }

    if (v1[96])
    {
      v91 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v91, 0x10A1C40D4912B22);
    }

    if (v1[97])
    {
      v92 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v92, 0x10A1C40D4912B22);
    }

    if (v1[98])
    {
      v93 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v93, 0x10A1C40D4912B22);
    }

    if (v1[99])
    {
      v94 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v94, 0x10A1C4030AC051BLL);
    }

    if (v1[100])
    {
      v95 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v95, 0x10A1C4030AC051BLL);
    }

    if (v1[101])
    {
      v96 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v96, 0x10A1C4030AC051BLL);
    }

    if (v1[102])
    {
      v97 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v97, 0x10A1C4030AC051BLL);
    }

    if (v1[103])
    {
      v98 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v98, 0x10A1C4030AC051BLL);
    }

    if (v1[104])
    {
      v99 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v99, 0x10A1C4030AC051BLL);
    }

    if (v1[105])
    {
      v100 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v100, 0x10A1C4030AC051BLL);
    }

    if (v1[106])
    {
      v101 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v101, 0x10A1C4034CD354FLL);
    }

    if (v1[107])
    {
      v102 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v102, 0x10A1C4030AC051BLL);
    }

    if (v1[108])
    {
      v103 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v103, 0x10A1C40D4912B22);
    }

    if (v1[109])
    {
      v104 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v104, 0x10A1C40D4912B22);
    }

    if (v1[110])
    {
      v105 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v105, 0x10A1C40D4912B22);
    }

    if (v1[111])
    {
      v106 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v106, 0x10A1C40D4912B22);
    }

    if (v1[112])
    {
      v107 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v107, 0x10A1C40D4912B22);
    }

    if (v1[113])
    {
      v108 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v108, 0x10A1C40D4912B22);
    }

    if (v1[114])
    {
      v109 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v109, 0x10A1C40D4912B22);
    }

    if (v1[115])
    {
      v110 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v110, 0x10A1C40D4912B22);
    }

    if (v1[116])
    {
      v111 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v111, 0x10A1C40D4912B22);
    }

    if (v1[117])
    {
      v112 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v112, 0x10A1C40D4912B22);
    }

    if (v1[118])
    {
      v113 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v113, 0x10A1C40D4912B22);
    }

    if (v1[119])
    {
      v114 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v114, 0x10A1C40D4912B22);
    }

    if (v1[120])
    {
      v115 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v115, 0x10A1C40D4912B22);
    }

    if (v1[121])
    {
      v116 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v116, 0x10A1C40D4912B22);
    }

    if (v1[122])
    {
      v117 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v117, 0x10A1C40D4912B22);
    }

    if (v1[123])
    {
      v118 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v118, 0x10A1C40D4912B22);
    }

    result = v1[124];
    if (result)
    {
      MEMORY[0x277C97A10]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763BD4F8(uint64_t *a1)
{
  sub_2763BCAE8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2763BD538(uint64_t *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSDSOS::SpecLineEndArchive::Clear(result[7]);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_184;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSDSOS::SpecLineEndArchive::Clear(v1[8]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_185;
  }

LABEL_184:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[9]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_186;
  }

LABEL_185:
  result = TSDSOS::SpecLineEndArchive::Clear(v1[10]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_187:
    result = TSDSOS::SpecShadowArchive::Clear(v1[12]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_188;
  }

LABEL_186:
  result = TSDSOS::SpecLineEndArchive::Clear(v1[11]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_187;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_188:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[13]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[14]);
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(v1[15]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_192;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSDSOS::SpecStrokeArchive::Clear(v1[16]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_193;
  }

LABEL_192:
  result = TSDSOS::SpecFillArchive::Clear(v1[17]);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_194;
  }

LABEL_193:
  result = TSDSOS::SpecFillArchive::Clear(v1[18]);
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_195;
  }

LABEL_194:
  result = TSDSOS::SpecFillArchive::Clear(v1[19]);
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_196;
  }

LABEL_195:
  result = TSDSOS::SpecFillArchive::Clear(v1[20]);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_196:
  result = TSDSOS::SpecFillArchive::Clear(v1[21]);
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSDSOS::SpecFillArchive::Clear(v1[22]);
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSDSOS::SpecFillArchive::Clear(v1[23]);
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_200;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSDSOS::SpecFillArchive::Clear(v1[24]);
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_201;
  }

LABEL_200:
  result = TSDSOS::SpecFillArchive::Clear(v1[25]);
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_202;
  }

LABEL_201:
  result = TSDSOS::SpecFillArchive::Clear(v1[26]);
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_203;
  }

LABEL_202:
  result = TSDSOS::SpecFillArchive::Clear(v1[27]);
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_204;
  }

LABEL_203:
  result = TSDSOS::SpecFillArchive::Clear(v1[28]);
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_204:
  result = TSDSOS::SpecFillArchive::Clear(v1[29]);
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[30]);
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(v1[31]);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_278;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[32]);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_279;
  }

LABEL_278:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[33]);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_280;
  }

LABEL_279:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[34]);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_281;
  }

LABEL_280:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[35]);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_282:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[37]);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_283;
  }

LABEL_281:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[36]);
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_282;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_283:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[38]);
LABEL_40:
  v4 = *(v1 + 5);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[39]);
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_208;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[40]);
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_209;
  }

LABEL_208:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[41]);
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_210;
  }

LABEL_209:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[42]);
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_211;
  }

LABEL_210:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[43]);
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_212;
  }

LABEL_211:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[44]);
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_212:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[45]);
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[46]);
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[47]);
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_216;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSDSOS::SpecShadowArchive::Clear(v1[48]);
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_217;
  }

LABEL_216:
  result = TSDSOS::SpecShadowArchive::Clear(v1[49]);
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_218;
  }

LABEL_217:
  result = TSDSOS::SpecShadowArchive::Clear(v1[50]);
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_219;
  }

LABEL_218:
  result = TSDSOS::SpecShadowArchive::Clear(v1[51]);
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_220;
  }

LABEL_219:
  result = TSDSOS::SpecShadowArchive::Clear(v1[52]);
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_220:
  result = TSDSOS::SpecShadowArchive::Clear(v1[53]);
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = TSDSOS::SpecShadowArchive::Clear(v1[54]);
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = TSDSOS::SpecShadowArchive::Clear(v1[55]);
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_224;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = TSDSOS::SpecShadowArchive::Clear(v1[56]);
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_225;
  }

LABEL_224:
  result = TSDSOS::SpecShadowArchive::Clear(v1[57]);
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_226;
  }

LABEL_225:
  result = TSDSOS::SpecShadowArchive::Clear(v1[58]);
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_227;
  }

LABEL_226:
  result = TSDSOS::SpecShadowArchive::Clear(v1[59]);
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_228;
  }

LABEL_227:
  result = TSDSOS::SpecShadowArchive::Clear(v1[60]);
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_228:
  result = TSDSOS::SpecShadowArchive::Clear(v1[61]);
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSDSOS::SpecShadowArchive::Clear(v1[62]);
  }

LABEL_70:
  if (!HIBYTE(v4))
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSDSOS::SpecShadowArchive::Clear(v1[63]);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_286;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSDSOS::SpecStrokeArchive::Clear(v1[64]);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_287;
  }

LABEL_286:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[65]);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_288;
  }

LABEL_287:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[66]);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_289;
  }

LABEL_288:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[67]);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_290:
    result = TSDSOS::SpecStrokeArchive::Clear(v1[69]);
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_291;
  }

LABEL_289:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[68]);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_290;
  }

LABEL_78:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_291:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[70]);
LABEL_79:
  v5 = *(v1 + 6);
  if (!v5)
  {
    goto LABEL_89;
  }

  if (v5)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(v1[71]);
    if ((v5 & 2) == 0)
    {
LABEL_82:
      if ((v5 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_232;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_82;
  }

  result = TSDSOS::SpecStrokeArchive::Clear(v1[72]);
  if ((v5 & 4) == 0)
  {
LABEL_83:
    if ((v5 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_233;
  }

LABEL_232:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[73]);
  if ((v5 & 8) == 0)
  {
LABEL_84:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_234;
  }

LABEL_233:
  result = TSDSOS::SpecFillArchive::Clear(v1[74]);
  if ((v5 & 0x10) == 0)
  {
LABEL_85:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_235;
  }

LABEL_234:
  result = TSDSOS::SpecFillArchive::Clear(v1[75]);
  if ((v5 & 0x20) == 0)
  {
LABEL_86:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_236;
  }

LABEL_235:
  result = TSDSOS::SpecFillArchive::Clear(v1[76]);
  if ((v5 & 0x40) == 0)
  {
LABEL_87:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_236:
  result = TSDSOS::SpecFillArchive::Clear(v1[77]);
  if ((v5 & 0x80) != 0)
  {
LABEL_88:
    result = TSDSOS::SpecFillArchive::Clear(v1[78]);
  }

LABEL_89:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v5 & 0x100) != 0)
  {
    result = TSDSOS::SpecFillArchive::Clear(v1[79]);
    if ((v5 & 0x200) == 0)
    {
LABEL_92:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_240;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  result = TSDSOS::SpecFillArchive::Clear(v1[80]);
  if ((v5 & 0x400) == 0)
  {
LABEL_93:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_241;
  }

LABEL_240:
  result = TSSSOS::SpecBoolArchive::Clear(v1[81]);
  if ((v5 & 0x800) == 0)
  {
LABEL_94:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_242;
  }

LABEL_241:
  result = TSSSOS::SpecBoolArchive::Clear(v1[82]);
  if ((v5 & 0x1000) == 0)
  {
LABEL_95:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_243;
  }

LABEL_242:
  result = TSSSOS::SpecBoolArchive::Clear(v1[83]);
  if ((v5 & 0x2000) == 0)
  {
LABEL_96:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_244;
  }

LABEL_243:
  result = TSSSOS::SpecBoolArchive::Clear(v1[84]);
  if ((v5 & 0x4000) == 0)
  {
LABEL_97:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_244:
  result = TSSSOS::SpecBoolArchive::Clear(v1[85]);
  if ((v5 & 0x8000) != 0)
  {
LABEL_98:
    result = TSSSOS::SpecBoolArchive::Clear(v1[86]);
  }

LABEL_99:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(v1[87]);
    if ((v5 & 0x20000) == 0)
    {
LABEL_102:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_248;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_102;
  }

  result = TSSSOS::SpecBoolArchive::Clear(v1[88]);
  if ((v5 & 0x40000) == 0)
  {
LABEL_103:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_249;
  }

LABEL_248:
  result = TSSSOS::SpecBoolArchive::Clear(v1[89]);
  if ((v5 & 0x80000) == 0)
  {
LABEL_104:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_250;
  }

LABEL_249:
  result = TSSSOS::SpecBoolArchive::Clear(v1[90]);
  if ((v5 & 0x100000) == 0)
  {
LABEL_105:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_251;
  }

LABEL_250:
  result = TSSSOS::SpecBoolArchive::Clear(v1[91]);
  if ((v5 & 0x200000) == 0)
  {
LABEL_106:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_252;
  }

LABEL_251:
  result = TSSSOS::SpecBoolArchive::Clear(v1[92]);
  if ((v5 & 0x400000) == 0)
  {
LABEL_107:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_252:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[93]);
  if ((v5 & 0x800000) != 0)
  {
LABEL_108:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[94]);
  }

LABEL_109:
  if (!HIBYTE(v5))
  {
    goto LABEL_118;
  }

  if ((v5 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[95]);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_112:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_294;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_112;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[96]);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_295;
  }

LABEL_294:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[97]);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_114:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_296;
  }

LABEL_295:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[98]);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_297;
  }

LABEL_296:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[99]);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_116:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_298:
    result = TSDSOS::SpecStrokeArchive::Clear(v1[101]);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_299;
  }

LABEL_297:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[100]);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_298;
  }

LABEL_117:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_299:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[102]);
LABEL_118:
  v6 = *(v1 + 7);
  if (!v6)
  {
    goto LABEL_128;
  }

  if (v6)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(v1[103]);
    if ((v6 & 2) == 0)
    {
LABEL_121:
      if ((v6 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_256;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_121;
  }

  result = TSDSOS::SpecStrokeArchive::Clear(v1[104]);
  if ((v6 & 4) == 0)
  {
LABEL_122:
    if ((v6 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_257;
  }

LABEL_256:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[105]);
  if ((v6 & 8) == 0)
  {
LABEL_123:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_258;
  }

LABEL_257:
  result = TSDSOS::SpecShadowArchive::Clear(v1[106]);
  if ((v6 & 0x10) == 0)
  {
LABEL_124:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_259;
  }

LABEL_258:
  result = TSDSOS::SpecStrokeArchive::Clear(v1[107]);
  if ((v6 & 0x20) == 0)
  {
LABEL_125:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_260;
  }

LABEL_259:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[108]);
  if ((v6 & 0x40) == 0)
  {
LABEL_126:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_260:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[109]);
  if ((v6 & 0x80) != 0)
  {
LABEL_127:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[110]);
  }

LABEL_128:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_138;
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[111]);
    if ((v6 & 0x200) == 0)
    {
LABEL_131:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_264;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_131;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[112]);
  if ((v6 & 0x400) == 0)
  {
LABEL_132:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_265;
  }

LABEL_264:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[113]);
  if ((v6 & 0x800) == 0)
  {
LABEL_133:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_266;
  }

LABEL_265:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[114]);
  if ((v6 & 0x1000) == 0)
  {
LABEL_134:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_267;
  }

LABEL_266:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[115]);
  if ((v6 & 0x2000) == 0)
  {
LABEL_135:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_268;
  }

LABEL_267:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[116]);
  if ((v6 & 0x4000) == 0)
  {
LABEL_136:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

LABEL_268:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[117]);
  if ((v6 & 0x8000) != 0)
  {
LABEL_137:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[118]);
  }

LABEL_138:
  if ((v6 & 0x3F0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v6 & 0x10000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[119]);
    if ((v6 & 0x20000) == 0)
    {
LABEL_141:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_272;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_141;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[120]);
  if ((v6 & 0x40000) == 0)
  {
LABEL_142:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_273;
  }

LABEL_272:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[121]);
  if ((v6 & 0x80000) == 0)
  {
LABEL_143:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_274;
  }

LABEL_273:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[122]);
  if ((v6 & 0x100000) == 0)
  {
LABEL_144:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

LABEL_274:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[123]);
  if ((v6 & 0x200000) != 0)
  {
LABEL_145:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[124]);
  }

LABEL_146:
  if ((v6 & 0xC00000) != 0)
  {
    *(v1 + 500) = 0;
  }

  if (HIBYTE(v6))
  {
    *(v2 + 986) = 0;
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    *(v2 + 994) = 0;
  }

  if ((v7 & 0xFF00) != 0)
  {
    *(v2 + 1002) = 0;
  }

  if ((v7 & 0xFF0000) != 0)
  {
    *(v2 + 1010) = 0;
  }

  if (HIBYTE(v7))
  {
    *(v2 + 1018) = 0;
  }

  v8 = *(v1 + 9);
  if (v8)
  {
    *(v2 + 1026) = 0;
  }

  if ((v8 & 0xFF00) != 0)
  {
    *(v2 + 1034) = 0;
  }

  if ((v8 & 0xFF0000) != 0)
  {
    *(v2 + 1042) = 0;
  }

  if (HIBYTE(v8))
  {
    *(v2 + 1050) = 0;
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    *(v2 + 1058) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(v2 + 1066) = 0;
  }

  if ((v9 & 0xFF0000) != 0)
  {
    *(v2 + 1074) = 0;
  }

  if (HIBYTE(v9))
  {
    *(v2 + 1082) = 0;
  }

  v10 = *(v1 + 11);
  if (v10)
  {
    *(v2 + 1090) = 0;
  }

  if ((v10 & 0xF00) != 0)
  {
    *(v2 + 1098) = 0;
  }

  *v2 = 0u;
  *(v2 + 1) = 0u;
  v12 = *(v1 + 8);
  v11 = v1 + 1;
  if (v12)
  {

    return sub_2763D4FD4(v11);
  }

  return result;
}

google::protobuf::internal *sub_2763BDE54(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v844 = a2;
  if ((sub_2763D4D98(a3, &v844) & 1) == 0)
  {
    while (1)
    {
      v6 = (v844 + 1);
      LODWORD(v7) = *v844;
      if (*v844 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v844, v7);
          v844 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v844 + 2);
      }

      v844 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 1u;
          v605 = *(a1 + 56);
          if (v605)
          {
            goto LABEL_1442;
          }

          v722 = *(a1 + 8);
          if (v722)
          {
            v722 = *(v722 & 0xFFFFFFFFFFFFFFFELL);
          }

          v723 = MEMORY[0x277C97C10](v722);
          LODWORD(v605) = v723;
          *(a1 + 56) = v723;
          goto LABEL_1441;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x400000u;
          v9 = (v6 + 1);
          v8 = *v6;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v10 = *v9;
          v8 = (v10 << 7) + v8 - 128;
          if (v10 < 0)
          {
            v369 = google::protobuf::internal::VarintParseSlow64(v6, v8);
            v844 = v369;
            *(a1 + 1000) = v370 != 0;
            if (!v369)
            {
              return 0;
            }
          }

          else
          {
            v9 = (v6 + 2);
LABEL_12:
            v844 = v9;
            *(a1 + 1000) = v8 != 0;
          }

          goto LABEL_1434;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 2u;
          v605 = *(a1 + 64);
          if (v605)
          {
            goto LABEL_1442;
          }

          v606 = *(a1 + 8);
          if (v606)
          {
            v606 = *(v606 & 0xFFFFFFFFFFFFFFFELL);
          }

          v607 = MEMORY[0x277C97C10](v606);
          LODWORD(v605) = v607;
          *(a1 + 64) = v607;
          goto LABEL_1441;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x800000u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v411 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v844 = v411;
            *(a1 + 1001) = v412 != 0;
            if (!v411)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_134:
            v844 = v82;
            *(a1 + 1001) = v81 != 0;
          }

          goto LABEL_1434;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 4u;
          v599 = *(a1 + 72);
          if (v599)
          {
            goto LABEL_1344;
          }

          v807 = *(a1 + 8);
          if (v807)
          {
            v807 = *(v807 & 0xFFFFFFFFFFFFFFFELL);
          }

          v808 = MEMORY[0x277C97C00](v807);
          LODWORD(v599) = v808;
          *(a1 + 72) = v808;
          goto LABEL_1343;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x1000000u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v427 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v844 = v427;
            *(a1 + 1002) = v428 != 0;
            if (!v427)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_174:
            v844 = v106;
            *(a1 + 1002) = v105 != 0;
          }

          goto LABEL_1434;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 8u;
          v605 = *(a1 + 80);
          if (v605)
          {
            goto LABEL_1442;
          }

          v841 = *(a1 + 8);
          if (v841)
          {
            v841 = *(v841 & 0xFFFFFFFFFFFFFFFELL);
          }

          v842 = MEMORY[0x277C97C10](v841);
          LODWORD(v605) = v842;
          *(a1 + 80) = v842;
          goto LABEL_1441;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x2000000u;
          v49 = (v6 + 1);
          v48 = *v6;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v389 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v844 = v389;
            *(a1 + 1003) = v390 != 0;
            if (!v389)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_79:
            v844 = v49;
            *(a1 + 1003) = v48 != 0;
          }

          goto LABEL_1434;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x10u;
          v605 = *(a1 + 88);
          if (v605)
          {
            goto LABEL_1442;
          }

          v676 = *(a1 + 8);
          if (v676)
          {
            v676 = *(v676 & 0xFFFFFFFFFFFFFFFELL);
          }

          v677 = MEMORY[0x277C97C10](v676);
          LODWORD(v605) = v677;
          *(a1 + 88) = v677;
LABEL_1441:
          v6 = v844;
LABEL_1442:
          v800 = sub_2764A9D7C(a3, v605, v6);
          goto LABEL_1433;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x4000000u;
          v97 = (v6 + 1);
          v96 = *v6;
          if ((v96 & 0x8000000000000000) == 0)
          {
            goto LABEL_159;
          }

          v98 = *v97;
          v96 = (v98 << 7) + v96 - 128;
          if (v98 < 0)
          {
            v421 = google::protobuf::internal::VarintParseSlow64(v6, v96);
            v844 = v421;
            *(a1 + 1004) = v422 != 0;
            if (!v421)
            {
              return 0;
            }
          }

          else
          {
            v97 = (v6 + 2);
LABEL_159:
            v844 = v97;
            *(a1 + 1004) = v96 != 0;
          }

          goto LABEL_1434;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x20u;
          v602 = *(a1 + 96);
          if (v602)
          {
            goto LABEL_1408;
          }

          v660 = *(a1 + 8);
          if (v660)
          {
            v660 = *(v660 & 0xFFFFFFFFFFFFFFFELL);
          }

          v661 = MEMORY[0x277C97BF0](v660);
          LODWORD(v602) = v661;
          *(a1 + 96) = v661;
          goto LABEL_1407;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x8000000u;
          v85 = (v6 + 1);
          v84 = *v6;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          v86 = *v85;
          v84 = (v86 << 7) + v84 - 128;
          if (v86 < 0)
          {
            v413 = google::protobuf::internal::VarintParseSlow64(v6, v84);
            v844 = v413;
            *(a1 + 1005) = v414 != 0;
            if (!v413)
            {
              return 0;
            }
          }

          else
          {
            v85 = (v6 + 2);
LABEL_139:
            v844 = v85;
            *(a1 + 1005) = v84 != 0;
          }

          goto LABEL_1434;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x40u;
          v611 = *(a1 + 104);
          if (v611)
          {
            goto LABEL_1425;
          }

          v746 = *(a1 + 8);
          if (v746)
          {
            v746 = *(v746 & 0xFFFFFFFFFFFFFFFELL);
          }

          v747 = MEMORY[0x277C97C60](v746);
          LODWORD(v611) = v747;
          *(a1 + 104) = v747;
          goto LABEL_1424;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x10000000u;
          v166 = (v6 + 1);
          v165 = *v6;
          if ((v165 & 0x8000000000000000) == 0)
          {
            goto LABEL_274;
          }

          v167 = *v166;
          v165 = (v167 << 7) + v165 - 128;
          if (v167 < 0)
          {
            v467 = google::protobuf::internal::VarintParseSlow64(v6, v165);
            v844 = v467;
            *(a1 + 1006) = v468 != 0;
            if (!v467)
            {
              return 0;
            }
          }

          else
          {
            v166 = (v6 + 2);
LABEL_274:
            v844 = v166;
            *(a1 + 1006) = v165 != 0;
          }

          goto LABEL_1434;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x80u;
          v611 = *(a1 + 112);
          if (v611)
          {
            goto LABEL_1425;
          }

          v696 = *(a1 + 8);
          if (v696)
          {
            v696 = *(v696 & 0xFFFFFFFFFFFFFFFELL);
          }

          v697 = MEMORY[0x277C97C60](v696);
          LODWORD(v611) = v697;
          *(a1 + 112) = v697;
          goto LABEL_1424;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x20000000u;
          v271 = (v6 + 1);
          v270 = *v6;
          if ((v270 & 0x8000000000000000) == 0)
          {
            goto LABEL_449;
          }

          v272 = *v271;
          v270 = (v272 << 7) + v270 - 128;
          if (v272 < 0)
          {
            v537 = google::protobuf::internal::VarintParseSlow64(v6, v270);
            v844 = v537;
            *(a1 + 1007) = v538 != 0;
            if (!v537)
            {
              return 0;
            }
          }

          else
          {
            v271 = (v6 + 2);
LABEL_449:
            v844 = v271;
            *(a1 + 1007) = v270 != 0;
          }

          goto LABEL_1434;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x100u;
          v599 = *(a1 + 120);
          if (v599)
          {
            goto LABEL_1344;
          }

          v600 = *(a1 + 8);
          if (v600)
          {
            v600 = *(v600 & 0xFFFFFFFFFFFFFFFELL);
          }

          v601 = MEMORY[0x277C97C00](v600);
          LODWORD(v599) = v601;
          *(a1 + 120) = v601;
          goto LABEL_1343;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x40000000u;
          v115 = (v6 + 1);
          v114 = *v6;
          if ((v114 & 0x8000000000000000) == 0)
          {
            goto LABEL_189;
          }

          v116 = *v115;
          v114 = (v116 << 7) + v114 - 128;
          if (v116 < 0)
          {
            v433 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v844 = v433;
            *(a1 + 1008) = v434 != 0;
            if (!v433)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_189:
            v844 = v115;
            *(a1 + 1008) = v114 != 0;
          }

          goto LABEL_1434;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x200u;
          v599 = *(a1 + 128);
          if (v599)
          {
            goto LABEL_1344;
          }

          v801 = *(a1 + 8);
          if (v801)
          {
            v801 = *(v801 & 0xFFFFFFFFFFFFFFFELL);
          }

          v802 = MEMORY[0x277C97C00](v801);
          LODWORD(v599) = v802;
          *(a1 + 128) = v802;
          goto LABEL_1343;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x80000000;
          v94 = (v6 + 1);
          v93 = *v6;
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v95 = *v94;
          v93 = (v95 << 7) + v93 - 128;
          if (v95 < 0)
          {
            v419 = google::protobuf::internal::VarintParseSlow64(v6, v93);
            v844 = v419;
            *(a1 + 1009) = v420 != 0;
            if (!v419)
            {
              return 0;
            }
          }

          else
          {
            v94 = (v6 + 2);
LABEL_154:
            v844 = v94;
            *(a1 + 1009) = v93 != 0;
          }

          goto LABEL_1434;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x400u;
          v608 = *(a1 + 136);
          if (v608)
          {
            goto LABEL_1432;
          }

          v624 = *(a1 + 8);
          if (v624)
          {
            v624 = *(v624 & 0xFFFFFFFFFFFFFFFELL);
          }

          v625 = MEMORY[0x277C97BE0](v624);
          LODWORD(v608) = v625;
          *(a1 + 136) = v625;
          goto LABEL_1431;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 1u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v365 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v844 = v365;
            *(a1 + 1010) = v366 != 0;
            if (!v365)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v844 = v16;
            *(a1 + 1010) = v15 != 0;
          }

          goto LABEL_1434;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x800u;
          v608 = *(a1 + 144);
          if (v608)
          {
            goto LABEL_1432;
          }

          v680 = *(a1 + 8);
          if (v680)
          {
            v680 = *(v680 & 0xFFFFFFFFFFFFFFFELL);
          }

          v681 = MEMORY[0x277C97BE0](v680);
          LODWORD(v608) = v681;
          *(a1 + 144) = v681;
          goto LABEL_1431;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 2u;
          v40 = (v6 + 1);
          v39 = *v6;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v383 = google::protobuf::internal::VarintParseSlow64(v6, v39);
            v844 = v383;
            *(a1 + 1011) = v384 != 0;
            if (!v383)
            {
              return 0;
            }
          }

          else
          {
            v40 = (v6 + 2);
LABEL_64:
            v844 = v40;
            *(a1 + 1011) = v39 != 0;
          }

          goto LABEL_1434;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x1000u;
          v608 = *(a1 + 152);
          if (v608)
          {
            goto LABEL_1432;
          }

          v835 = *(a1 + 8);
          if (v835)
          {
            v835 = *(v835 & 0xFFFFFFFFFFFFFFFELL);
          }

          v836 = MEMORY[0x277C97BE0](v835);
          LODWORD(v608) = v836;
          *(a1 + 152) = v836;
          goto LABEL_1431;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 4u;
          v361 = (v6 + 1);
          v360 = *v6;
          if ((v360 & 0x8000000000000000) == 0)
          {
            goto LABEL_599;
          }

          v362 = *v361;
          v360 = (v362 << 7) + v360 - 128;
          if (v362 < 0)
          {
            v597 = google::protobuf::internal::VarintParseSlow64(v6, v360);
            v844 = v597;
            *(a1 + 1012) = v598 != 0;
            if (!v597)
            {
              return 0;
            }
          }

          else
          {
            v361 = (v6 + 2);
LABEL_599:
            v844 = v361;
            *(a1 + 1012) = v360 != 0;
          }

LABEL_1434:
          if (sub_2763D4D98(a3, &v844))
          {
            return v844;
          }

          break;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x2000u;
          v608 = *(a1 + 160);
          if (v608)
          {
            goto LABEL_1432;
          }

          v698 = *(a1 + 8);
          if (v698)
          {
            v698 = *(v698 & 0xFFFFFFFFFFFFFFFELL);
          }

          v699 = MEMORY[0x277C97BE0](v698);
          LODWORD(v608) = v699;
          *(a1 + 160) = v699;
          goto LABEL_1431;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 8u;
          v220 = (v6 + 1);
          v219 = *v6;
          if ((v219 & 0x8000000000000000) == 0)
          {
            goto LABEL_364;
          }

          v221 = *v220;
          v219 = (v221 << 7) + v219 - 128;
          if (v221 < 0)
          {
            v503 = google::protobuf::internal::VarintParseSlow64(v6, v219);
            v844 = v503;
            *(a1 + 1013) = v504 != 0;
            if (!v503)
            {
              return 0;
            }
          }

          else
          {
            v220 = (v6 + 2);
LABEL_364:
            v844 = v220;
            *(a1 + 1013) = v219 != 0;
          }

          goto LABEL_1434;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x4000u;
          v608 = *(a1 + 168);
          if (v608)
          {
            goto LABEL_1432;
          }

          v633 = *(a1 + 8);
          if (v633)
          {
            v633 = *(v633 & 0xFFFFFFFFFFFFFFFELL);
          }

          v634 = MEMORY[0x277C97BE0](v633);
          LODWORD(v608) = v634;
          *(a1 + 168) = v634;
          goto LABEL_1431;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x10u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v387 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v844 = v387;
            *(a1 + 1014) = v388 != 0;
            if (!v387)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_74:
            v844 = v46;
            *(a1 + 1014) = v45 != 0;
          }

          goto LABEL_1434;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x8000u;
          v608 = *(a1 + 176);
          if (v608)
          {
            goto LABEL_1432;
          }

          v811 = *(a1 + 8);
          if (v811)
          {
            v811 = *(v811 & 0xFFFFFFFFFFFFFFFELL);
          }

          v812 = MEMORY[0x277C97BE0](v811);
          LODWORD(v608) = v812;
          *(a1 + 176) = v812;
          goto LABEL_1431;
        case 0x20u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x20u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v363 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v844 = v363;
            *(a1 + 1015) = v364 != 0;
            if (!v363)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_19:
            v844 = v13;
            *(a1 + 1015) = v12 != 0;
          }

          goto LABEL_1434;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x10000u;
          v608 = *(a1 + 184);
          if (v608)
          {
            goto LABEL_1432;
          }

          v678 = *(a1 + 8);
          if (v678)
          {
            v678 = *(v678 & 0xFFFFFFFFFFFFFFFELL);
          }

          v679 = MEMORY[0x277C97BE0](v678);
          LODWORD(v608) = v679;
          *(a1 + 184) = v679;
          goto LABEL_1431;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x40u;
          v346 = (v6 + 1);
          v345 = *v6;
          if ((v345 & 0x8000000000000000) == 0)
          {
            goto LABEL_574;
          }

          v347 = *v346;
          v345 = (v347 << 7) + v345 - 128;
          if (v347 < 0)
          {
            v587 = google::protobuf::internal::VarintParseSlow64(v6, v345);
            v844 = v587;
            *(a1 + 1016) = v588 != 0;
            if (!v587)
            {
              return 0;
            }
          }

          else
          {
            v346 = (v6 + 2);
LABEL_574:
            v844 = v346;
            *(a1 + 1016) = v345 != 0;
          }

          goto LABEL_1434;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x20000u;
          v608 = *(a1 + 192);
          if (v608)
          {
            goto LABEL_1432;
          }

          v609 = *(a1 + 8);
          if (v609)
          {
            v609 = *(v609 & 0xFFFFFFFFFFFFFFFELL);
          }

          v610 = MEMORY[0x277C97BE0](v609);
          LODWORD(v608) = v610;
          *(a1 + 192) = v610;
          goto LABEL_1431;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x80u;
          v319 = (v6 + 1);
          v318 = *v6;
          if ((v318 & 0x8000000000000000) == 0)
          {
            goto LABEL_529;
          }

          v320 = *v319;
          v318 = (v320 << 7) + v318 - 128;
          if (v320 < 0)
          {
            v569 = google::protobuf::internal::VarintParseSlow64(v6, v318);
            v844 = v569;
            *(a1 + 1017) = v570 != 0;
            if (!v569)
            {
              return 0;
            }
          }

          else
          {
            v319 = (v6 + 2);
LABEL_529:
            v844 = v319;
            *(a1 + 1017) = v318 != 0;
          }

          goto LABEL_1434;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x40000u;
          v608 = *(a1 + 200);
          if (v608)
          {
            goto LABEL_1432;
          }

          v614 = *(a1 + 8);
          if (v614)
          {
            v614 = *(v614 & 0xFFFFFFFFFFFFFFFELL);
          }

          v615 = MEMORY[0x277C97BE0](v614);
          LODWORD(v608) = v615;
          *(a1 + 200) = v615;
          goto LABEL_1431;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x100u;
          v73 = (v6 + 1);
          v72 = *v6;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v405 = google::protobuf::internal::VarintParseSlow64(v6, v72);
            v844 = v405;
            *(a1 + 1018) = v406 != 0;
            if (!v405)
            {
              return 0;
            }
          }

          else
          {
            v73 = (v6 + 2);
LABEL_119:
            v844 = v73;
            *(a1 + 1018) = v72 != 0;
          }

          goto LABEL_1434;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x80000u;
          v608 = *(a1 + 208);
          if (v608)
          {
            goto LABEL_1432;
          }

          v833 = *(a1 + 8);
          if (v833)
          {
            v833 = *(v833 & 0xFFFFFFFFFFFFFFFELL);
          }

          v834 = MEMORY[0x277C97BE0](v833);
          LODWORD(v608) = v834;
          *(a1 + 208) = v834;
          goto LABEL_1431;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x200u;
          v337 = (v6 + 1);
          v336 = *v6;
          if ((v336 & 0x8000000000000000) == 0)
          {
            goto LABEL_559;
          }

          v338 = *v337;
          v336 = (v338 << 7) + v336 - 128;
          if (v338 < 0)
          {
            v581 = google::protobuf::internal::VarintParseSlow64(v6, v336);
            v844 = v581;
            *(a1 + 1019) = v582 != 0;
            if (!v581)
            {
              return 0;
            }
          }

          else
          {
            v337 = (v6 + 2);
LABEL_559:
            v844 = v337;
            *(a1 + 1019) = v336 != 0;
          }

          goto LABEL_1434;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x100000u;
          v608 = *(a1 + 216);
          if (v608)
          {
            goto LABEL_1432;
          }

          v839 = *(a1 + 8);
          if (v839)
          {
            v839 = *(v839 & 0xFFFFFFFFFFFFFFFELL);
          }

          v840 = MEMORY[0x277C97BE0](v839);
          LODWORD(v608) = v840;
          *(a1 + 216) = v840;
          goto LABEL_1431;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x400u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v371 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v844 = v371;
            *(a1 + 1020) = v372 != 0;
            if (!v371)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v844 = v22;
            *(a1 + 1020) = v21 != 0;
          }

          goto LABEL_1434;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x200000u;
          v608 = *(a1 + 224);
          if (v608)
          {
            goto LABEL_1432;
          }

          v708 = *(a1 + 8);
          if (v708)
          {
            v708 = *(v708 & 0xFFFFFFFFFFFFFFFELL);
          }

          v709 = MEMORY[0x277C97BE0](v708);
          LODWORD(v608) = v709;
          *(a1 + 224) = v709;
          goto LABEL_1431;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x800u;
          v301 = (v6 + 1);
          v300 = *v6;
          if ((v300 & 0x8000000000000000) == 0)
          {
            goto LABEL_499;
          }

          v302 = *v301;
          v300 = (v302 << 7) + v300 - 128;
          if (v302 < 0)
          {
            v557 = google::protobuf::internal::VarintParseSlow64(v6, v300);
            v844 = v557;
            *(a1 + 1021) = v558 != 0;
            if (!v557)
            {
              return 0;
            }
          }

          else
          {
            v301 = (v6 + 2);
LABEL_499:
            v844 = v301;
            *(a1 + 1021) = v300 != 0;
          }

          goto LABEL_1434;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x400000u;
          v608 = *(a1 + 232);
          if (v608)
          {
            goto LABEL_1432;
          }

          v829 = *(a1 + 8);
          if (v829)
          {
            v829 = *(v829 & 0xFFFFFFFFFFFFFFFELL);
          }

          v830 = MEMORY[0x277C97BE0](v829);
          LODWORD(v608) = v830;
          *(a1 + 232) = v830;
          goto LABEL_1431;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x1000u;
          v343 = (v6 + 1);
          v342 = *v6;
          if ((v342 & 0x8000000000000000) == 0)
          {
            goto LABEL_569;
          }

          v344 = *v343;
          v342 = (v344 << 7) + v342 - 128;
          if (v344 < 0)
          {
            v585 = google::protobuf::internal::VarintParseSlow64(v6, v342);
            v844 = v585;
            *(a1 + 1022) = v586 != 0;
            if (!v585)
            {
              return 0;
            }
          }

          else
          {
            v343 = (v6 + 2);
LABEL_569:
            v844 = v343;
            *(a1 + 1022) = v342 != 0;
          }

          goto LABEL_1434;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x800000u;
          v628 = *(a1 + 240);
          if (v628)
          {
            goto LABEL_1391;
          }

          v825 = *(a1 + 8);
          if (v825)
          {
            v825 = *(v825 & 0xFFFFFFFFFFFFFFFELL);
          }

          v826 = MEMORY[0x277C97C40](v825);
          LODWORD(v628) = v826;
          *(a1 + 240) = v826;
          goto LABEL_1390;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x2000u;
          v340 = (v6 + 1);
          v339 = *v6;
          if ((v339 & 0x8000000000000000) == 0)
          {
            goto LABEL_564;
          }

          v341 = *v340;
          v339 = (v341 << 7) + v339 - 128;
          if (v341 < 0)
          {
            v583 = google::protobuf::internal::VarintParseSlow64(v6, v339);
            v844 = v583;
            *(a1 + 1023) = v584 != 0;
            if (!v583)
            {
              return 0;
            }
          }

          else
          {
            v340 = (v6 + 2);
LABEL_564:
            v844 = v340;
            *(a1 + 1023) = v339 != 0;
          }

          goto LABEL_1434;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x1000000u;
          v635 = *(a1 + 248);
          if (v635)
          {
            goto LABEL_1322;
          }

          v706 = *(a1 + 8);
          if (v706)
          {
            v706 = *(v706 & 0xFFFFFFFFFFFFFFFELL);
          }

          v707 = MEMORY[0x277C97C20](v706);
          LODWORD(v635) = v707;
          *(a1 + 248) = v707;
          goto LABEL_1321;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x4000u;
          v358 = (v6 + 1);
          v357 = *v6;
          if ((v357 & 0x8000000000000000) == 0)
          {
            goto LABEL_594;
          }

          v359 = *v358;
          v357 = (v359 << 7) + v357 - 128;
          if (v359 < 0)
          {
            v595 = google::protobuf::internal::VarintParseSlow64(v6, v357);
            v844 = v595;
            *(a1 + 1024) = v596 != 0;
            if (!v595)
            {
              return 0;
            }
          }

          else
          {
            v358 = (v6 + 2);
LABEL_594:
            v844 = v358;
            *(a1 + 1024) = v357 != 0;
          }

          goto LABEL_1434;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x2000000u;
          v611 = *(a1 + 256);
          if (v611)
          {
            goto LABEL_1425;
          }

          v650 = *(a1 + 8);
          if (v650)
          {
            v650 = *(v650 & 0xFFFFFFFFFFFFFFFELL);
          }

          v651 = MEMORY[0x277C97C60](v650);
          LODWORD(v611) = v651;
          *(a1 + 256) = v651;
          goto LABEL_1424;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x8000u;
          v208 = (v6 + 1);
          v207 = *v6;
          if ((v207 & 0x8000000000000000) == 0)
          {
            goto LABEL_344;
          }

          v209 = *v208;
          v207 = (v209 << 7) + v207 - 128;
          if (v209 < 0)
          {
            v495 = google::protobuf::internal::VarintParseSlow64(v6, v207);
            v844 = v495;
            *(a1 + 1025) = v496 != 0;
            if (!v495)
            {
              return 0;
            }
          }

          else
          {
            v208 = (v6 + 2);
LABEL_344:
            v844 = v208;
            *(a1 + 1025) = v207 != 0;
          }

          goto LABEL_1434;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x4000000u;
          v611 = *(a1 + 264);
          if (v611)
          {
            goto LABEL_1425;
          }

          v652 = *(a1 + 8);
          if (v652)
          {
            v652 = *(v652 & 0xFFFFFFFFFFFFFFFELL);
          }

          v653 = MEMORY[0x277C97C60](v652);
          LODWORD(v611) = v653;
          *(a1 + 264) = v653;
          goto LABEL_1424;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x10000u;
          v334 = (v6 + 1);
          v333 = *v6;
          if ((v333 & 0x8000000000000000) == 0)
          {
            goto LABEL_554;
          }

          v335 = *v334;
          v333 = (v335 << 7) + v333 - 128;
          if (v335 < 0)
          {
            v579 = google::protobuf::internal::VarintParseSlow64(v6, v333);
            v844 = v579;
            *(a1 + 1026) = v580 != 0;
            if (!v579)
            {
              return 0;
            }
          }

          else
          {
            v334 = (v6 + 2);
LABEL_554:
            v844 = v334;
            *(a1 + 1026) = v333 != 0;
          }

          goto LABEL_1434;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x8000000u;
          v611 = *(a1 + 272);
          if (v611)
          {
            goto LABEL_1425;
          }

          v823 = *(a1 + 8);
          if (v823)
          {
            v823 = *(v823 & 0xFFFFFFFFFFFFFFFELL);
          }

          v824 = MEMORY[0x277C97C60](v823);
          LODWORD(v611) = v824;
          *(a1 + 272) = v824;
          goto LABEL_1424;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x20000u;
          v352 = (v6 + 1);
          v351 = *v6;
          if ((v351 & 0x8000000000000000) == 0)
          {
            goto LABEL_584;
          }

          v353 = *v352;
          v351 = (v353 << 7) + v351 - 128;
          if (v353 < 0)
          {
            v591 = google::protobuf::internal::VarintParseSlow64(v6, v351);
            v844 = v591;
            *(a1 + 1027) = v592 != 0;
            if (!v591)
            {
              return 0;
            }
          }

          else
          {
            v352 = (v6 + 2);
LABEL_584:
            v844 = v352;
            *(a1 + 1027) = v351 != 0;
          }

          goto LABEL_1434;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x10000000u;
          v611 = *(a1 + 280);
          if (v611)
          {
            goto LABEL_1425;
          }

          v776 = *(a1 + 8);
          if (v776)
          {
            v776 = *(v776 & 0xFFFFFFFFFFFFFFFELL);
          }

          v777 = MEMORY[0x277C97C60](v776);
          LODWORD(v611) = v777;
          *(a1 + 280) = v777;
          goto LABEL_1424;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x40000u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_69;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v385 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v844 = v385;
            *(a1 + 1028) = v386 != 0;
            if (!v385)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_69:
            v844 = v43;
            *(a1 + 1028) = v42 != 0;
          }

          goto LABEL_1434;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x20000000u;
          v611 = *(a1 + 288);
          if (v611)
          {
            goto LABEL_1425;
          }

          v837 = *(a1 + 8);
          if (v837)
          {
            v837 = *(v837 & 0xFFFFFFFFFFFFFFFELL);
          }

          v838 = MEMORY[0x277C97C60](v837);
          LODWORD(v611) = v838;
          *(a1 + 288) = v838;
          goto LABEL_1424;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x80000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v373 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v844 = v373;
            *(a1 + 1029) = v374 != 0;
            if (!v373)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v844 = v25;
            *(a1 + 1029) = v24 != 0;
          }

          goto LABEL_1434;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x40000000u;
          v611 = *(a1 + 296);
          if (v611)
          {
            goto LABEL_1425;
          }

          v815 = *(a1 + 8);
          if (v815)
          {
            v815 = *(v815 & 0xFFFFFFFFFFFFFFFELL);
          }

          v816 = MEMORY[0x277C97C60](v815);
          LODWORD(v611) = v816;
          *(a1 + 296) = v816;
          goto LABEL_1424;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x100000u;
          v70 = (v6 + 1);
          v69 = *v6;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v403 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v844 = v403;
            *(a1 + 1030) = v404 != 0;
            if (!v403)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_114:
            v844 = v70;
            *(a1 + 1030) = v69 != 0;
          }

          goto LABEL_1434;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 16) |= 0x80000000;
          v611 = *(a1 + 304);
          if (v611)
          {
            goto LABEL_1425;
          }

          v656 = *(a1 + 8);
          if (v656)
          {
            v656 = *(v656 & 0xFFFFFFFFFFFFFFFELL);
          }

          v657 = MEMORY[0x277C97C60](v656);
          LODWORD(v611) = v657;
          *(a1 + 304) = v657;
          goto LABEL_1424;
        case 0x40u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x200000u;
          v349 = (v6 + 1);
          v348 = *v6;
          if ((v348 & 0x8000000000000000) == 0)
          {
            goto LABEL_579;
          }

          v350 = *v349;
          v348 = (v350 << 7) + v348 - 128;
          if (v350 < 0)
          {
            v589 = google::protobuf::internal::VarintParseSlow64(v6, v348);
            v844 = v589;
            *(a1 + 1031) = v590 != 0;
            if (!v589)
            {
              return 0;
            }
          }

          else
          {
            v349 = (v6 + 2);
LABEL_579:
            v844 = v349;
            *(a1 + 1031) = v348 != 0;
          }

          goto LABEL_1434;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 1u;
          v611 = *(a1 + 312);
          if (v611)
          {
            goto LABEL_1425;
          }

          v788 = *(a1 + 8);
          if (v788)
          {
            v788 = *(v788 & 0xFFFFFFFFFFFFFFFELL);
          }

          v789 = MEMORY[0x277C97C60](v788);
          LODWORD(v611) = v789;
          *(a1 + 312) = v789;
          goto LABEL_1424;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x400000u;
          v118 = (v6 + 1);
          v117 = *v6;
          if ((v117 & 0x8000000000000000) == 0)
          {
            goto LABEL_194;
          }

          v119 = *v118;
          v117 = (v119 << 7) + v117 - 128;
          if (v119 < 0)
          {
            v435 = google::protobuf::internal::VarintParseSlow64(v6, v117);
            v844 = v435;
            *(a1 + 1032) = v436 != 0;
            if (!v435)
            {
              return 0;
            }
          }

          else
          {
            v118 = (v6 + 2);
LABEL_194:
            v844 = v118;
            *(a1 + 1032) = v117 != 0;
          }

          goto LABEL_1434;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 2u;
          v628 = *(a1 + 320);
          if (v628)
          {
            goto LABEL_1391;
          }

          v629 = *(a1 + 8);
          if (v629)
          {
            v629 = *(v629 & 0xFFFFFFFFFFFFFFFELL);
          }

          v630 = MEMORY[0x277C97C40](v629);
          LODWORD(v628) = v630;
          *(a1 + 320) = v630;
          goto LABEL_1390;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x800000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v367 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v844 = v367;
            *(a1 + 1033) = v368 != 0;
            if (!v367)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v844 = v19;
            *(a1 + 1033) = v18 != 0;
          }

          goto LABEL_1434;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 4u;
          v611 = *(a1 + 328);
          if (v611)
          {
            goto LABEL_1425;
          }

          v622 = *(a1 + 8);
          if (v622)
          {
            v622 = *(v622 & 0xFFFFFFFFFFFFFFFELL);
          }

          v623 = MEMORY[0x277C97C60](v622);
          LODWORD(v611) = v623;
          *(a1 + 328) = v623;
          goto LABEL_1424;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x1000000u;
          v280 = (v6 + 1);
          v279 = *v6;
          if ((v279 & 0x8000000000000000) == 0)
          {
            goto LABEL_464;
          }

          v281 = *v280;
          v279 = (v281 << 7) + v279 - 128;
          if (v281 < 0)
          {
            v543 = google::protobuf::internal::VarintParseSlow64(v6, v279);
            v844 = v543;
            *(a1 + 1034) = v544 != 0;
            if (!v543)
            {
              return 0;
            }
          }

          else
          {
            v280 = (v6 + 2);
LABEL_464:
            v844 = v280;
            *(a1 + 1034) = v279 != 0;
          }

          goto LABEL_1434;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 8u;
          v611 = *(a1 + 336);
          if (v611)
          {
            goto LABEL_1425;
          }

          v710 = *(a1 + 8);
          if (v710)
          {
            v710 = *(v710 & 0xFFFFFFFFFFFFFFFELL);
          }

          v711 = MEMORY[0x277C97C60](v710);
          LODWORD(v611) = v711;
          *(a1 + 336) = v711;
          goto LABEL_1424;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x2000000u;
          v295 = (v6 + 1);
          v294 = *v6;
          if ((v294 & 0x8000000000000000) == 0)
          {
            goto LABEL_489;
          }

          v296 = *v295;
          v294 = (v296 << 7) + v294 - 128;
          if (v296 < 0)
          {
            v553 = google::protobuf::internal::VarintParseSlow64(v6, v294);
            v844 = v553;
            *(a1 + 1035) = v554 != 0;
            if (!v553)
            {
              return 0;
            }
          }

          else
          {
            v295 = (v6 + 2);
LABEL_489:
            v844 = v295;
            *(a1 + 1035) = v294 != 0;
          }

          goto LABEL_1434;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x10u;
          v611 = *(a1 + 344);
          if (v611)
          {
            goto LABEL_1425;
          }

          v794 = *(a1 + 8);
          if (v794)
          {
            v794 = *(v794 & 0xFFFFFFFFFFFFFFFELL);
          }

          v795 = MEMORY[0x277C97C60](v794);
          LODWORD(v611) = v795;
          *(a1 + 344) = v795;
          goto LABEL_1424;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x4000000u;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v459 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v844 = v459;
            *(a1 + 1036) = v460 != 0;
            if (!v459)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_254:
            v844 = v154;
            *(a1 + 1036) = v153 != 0;
          }

          goto LABEL_1434;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x20u;
          v611 = *(a1 + 352);
          if (v611)
          {
            goto LABEL_1425;
          }

          v620 = *(a1 + 8);
          if (v620)
          {
            v620 = *(v620 & 0xFFFFFFFFFFFFFFFELL);
          }

          v621 = MEMORY[0x277C97C60](v620);
          LODWORD(v611) = v621;
          *(a1 + 352) = v621;
          goto LABEL_1424;
        case 0x4Cu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x8000000u;
          v238 = (v6 + 1);
          v237 = *v6;
          if ((v237 & 0x8000000000000000) == 0)
          {
            goto LABEL_394;
          }

          v239 = *v238;
          v237 = (v239 << 7) + v237 - 128;
          if (v239 < 0)
          {
            v515 = google::protobuf::internal::VarintParseSlow64(v6, v237);
            v844 = v515;
            *(a1 + 1037) = v516 != 0;
            if (!v515)
            {
              return 0;
            }
          }

          else
          {
            v238 = (v6 + 2);
LABEL_394:
            v844 = v238;
            *(a1 + 1037) = v237 != 0;
          }

          goto LABEL_1434;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x40u;
          v611 = *(a1 + 360);
          if (v611)
          {
            goto LABEL_1425;
          }

          v612 = *(a1 + 8);
          if (v612)
          {
            v612 = *(v612 & 0xFFFFFFFFFFFFFFFELL);
          }

          v613 = MEMORY[0x277C97C60](v612);
          LODWORD(v611) = v613;
          *(a1 + 360) = v613;
          goto LABEL_1424;
        case 0x4Eu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x10000000u;
          v310 = (v6 + 1);
          v309 = *v6;
          if ((v309 & 0x8000000000000000) == 0)
          {
            goto LABEL_514;
          }

          v311 = *v310;
          v309 = (v311 << 7) + v309 - 128;
          if (v311 < 0)
          {
            v563 = google::protobuf::internal::VarintParseSlow64(v6, v309);
            v844 = v563;
            *(a1 + 1038) = v564 != 0;
            if (!v563)
            {
              return 0;
            }
          }

          else
          {
            v310 = (v6 + 2);
LABEL_514:
            v844 = v310;
            *(a1 + 1038) = v309 != 0;
          }

          goto LABEL_1434;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x80u;
          v611 = *(a1 + 368);
          if (v611)
          {
            goto LABEL_1425;
          }

          v766 = *(a1 + 8);
          if (v766)
          {
            v766 = *(v766 & 0xFFFFFFFFFFFFFFFELL);
          }

          v767 = MEMORY[0x277C97C60](v766);
          LODWORD(v611) = v767;
          *(a1 + 368) = v767;
          goto LABEL_1424;
        case 0x50u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x20000000u;
          v322 = (v6 + 1);
          v321 = *v6;
          if ((v321 & 0x8000000000000000) == 0)
          {
            goto LABEL_534;
          }

          v323 = *v322;
          v321 = (v323 << 7) + v321 - 128;
          if (v323 < 0)
          {
            v571 = google::protobuf::internal::VarintParseSlow64(v6, v321);
            v844 = v571;
            *(a1 + 1039) = v572 != 0;
            if (!v571)
            {
              return 0;
            }
          }

          else
          {
            v322 = (v6 + 2);
LABEL_534:
            v844 = v322;
            *(a1 + 1039) = v321 != 0;
          }

          goto LABEL_1434;
        case 0x51u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x100u;
          v611 = *(a1 + 376);
          if (v611)
          {
            goto LABEL_1425;
          }

          v760 = *(a1 + 8);
          if (v760)
          {
            v760 = *(v760 & 0xFFFFFFFFFFFFFFFELL);
          }

          v761 = MEMORY[0x277C97C60](v760);
          LODWORD(v611) = v761;
          *(a1 + 376) = v761;
          goto LABEL_1424;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x40000000u;
          v88 = (v6 + 1);
          v87 = *v6;
          if ((v87 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v89 = *v88;
          v87 = (v89 << 7) + v87 - 128;
          if (v89 < 0)
          {
            v415 = google::protobuf::internal::VarintParseSlow64(v6, v87);
            v844 = v415;
            *(a1 + 1040) = v416 != 0;
            if (!v415)
            {
              return 0;
            }
          }

          else
          {
            v88 = (v6 + 2);
LABEL_144:
            v844 = v88;
            *(a1 + 1040) = v87 != 0;
          }

          goto LABEL_1434;
        case 0x53u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x200u;
          v602 = *(a1 + 384);
          if (v602)
          {
            goto LABEL_1408;
          }

          v831 = *(a1 + 8);
          if (v831)
          {
            v831 = *(v831 & 0xFFFFFFFFFFFFFFFELL);
          }

          v832 = MEMORY[0x277C97BF0](v831);
          LODWORD(v602) = v832;
          *(a1 + 384) = v832;
          goto LABEL_1407;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 32) |= 0x80000000;
          v286 = (v6 + 1);
          v285 = *v6;
          if ((v285 & 0x8000000000000000) == 0)
          {
            goto LABEL_474;
          }

          v287 = *v286;
          v285 = (v287 << 7) + v285 - 128;
          if (v287 < 0)
          {
            v547 = google::protobuf::internal::VarintParseSlow64(v6, v285);
            v844 = v547;
            *(a1 + 1041) = v548 != 0;
            if (!v547)
            {
              return 0;
            }
          }

          else
          {
            v286 = (v6 + 2);
LABEL_474:
            v844 = v286;
            *(a1 + 1041) = v285 != 0;
          }

          goto LABEL_1434;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x400u;
          v602 = *(a1 + 392);
          if (v602)
          {
            goto LABEL_1408;
          }

          v821 = *(a1 + 8);
          if (v821)
          {
            v821 = *(v821 & 0xFFFFFFFFFFFFFFFELL);
          }

          v822 = MEMORY[0x277C97BF0](v821);
          LODWORD(v602) = v822;
          *(a1 + 392) = v822;
          goto LABEL_1407;
        case 0x56u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 1u;
          v100 = (v6 + 1);
          v99 = *v6;
          if ((v99 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }

          v101 = *v100;
          v99 = (v101 << 7) + v99 - 128;
          if (v101 < 0)
          {
            v423 = google::protobuf::internal::VarintParseSlow64(v6, v99);
            v844 = v423;
            *(a1 + 1042) = v424 != 0;
            if (!v423)
            {
              return 0;
            }
          }

          else
          {
            v100 = (v6 + 2);
LABEL_164:
            v844 = v100;
            *(a1 + 1042) = v99 != 0;
          }

          goto LABEL_1434;
        case 0x57u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x800u;
          v602 = *(a1 + 400);
          if (v602)
          {
            goto LABEL_1408;
          }

          v684 = *(a1 + 8);
          if (v684)
          {
            v684 = *(v684 & 0xFFFFFFFFFFFFFFFELL);
          }

          v685 = MEMORY[0x277C97BF0](v684);
          LODWORD(v602) = v685;
          *(a1 + 400) = v685;
          goto LABEL_1407;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 2u;
          v202 = (v6 + 1);
          v201 = *v6;
          if ((v201 & 0x8000000000000000) == 0)
          {
            goto LABEL_334;
          }

          v203 = *v202;
          v201 = (v203 << 7) + v201 - 128;
          if (v203 < 0)
          {
            v491 = google::protobuf::internal::VarintParseSlow64(v6, v201);
            v844 = v491;
            *(a1 + 1043) = v492 != 0;
            if (!v491)
            {
              return 0;
            }
          }

          else
          {
            v202 = (v6 + 2);
LABEL_334:
            v844 = v202;
            *(a1 + 1043) = v201 != 0;
          }

          goto LABEL_1434;
        case 0x59u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x1000u;
          v602 = *(a1 + 408);
          if (v602)
          {
            goto LABEL_1408;
          }

          v827 = *(a1 + 8);
          if (v827)
          {
            v827 = *(v827 & 0xFFFFFFFFFFFFFFFELL);
          }

          v828 = MEMORY[0x277C97BF0](v827);
          LODWORD(v602) = v828;
          *(a1 + 408) = v828;
          goto LABEL_1407;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 4u;
          v307 = (v6 + 1);
          v306 = *v6;
          if ((v306 & 0x8000000000000000) == 0)
          {
            goto LABEL_509;
          }

          v308 = *v307;
          v306 = (v308 << 7) + v306 - 128;
          if (v308 < 0)
          {
            v561 = google::protobuf::internal::VarintParseSlow64(v6, v306);
            v844 = v561;
            *(a1 + 1044) = v562 != 0;
            if (!v561)
            {
              return 0;
            }
          }

          else
          {
            v307 = (v6 + 2);
LABEL_509:
            v844 = v307;
            *(a1 + 1044) = v306 != 0;
          }

          goto LABEL_1434;
        case 0x5Bu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x2000u;
          v602 = *(a1 + 416);
          if (v602)
          {
            goto LABEL_1408;
          }

          v603 = *(a1 + 8);
          if (v603)
          {
            v603 = *(v603 & 0xFFFFFFFFFFFFFFFELL);
          }

          v604 = MEMORY[0x277C97BF0](v603);
          LODWORD(v602) = v604;
          *(a1 + 416) = v604;
          goto LABEL_1407;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 8u;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v399 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v844 = v399;
            *(a1 + 1045) = v400 != 0;
            if (!v399)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_104:
            v844 = v64;
            *(a1 + 1045) = v63 != 0;
          }

          goto LABEL_1434;
        case 0x5Du:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x4000u;
          v602 = *(a1 + 424);
          if (v602)
          {
            goto LABEL_1408;
          }

          v772 = *(a1 + 8);
          if (v772)
          {
            v772 = *(v772 & 0xFFFFFFFFFFFFFFFELL);
          }

          v773 = MEMORY[0x277C97BF0](v772);
          LODWORD(v602) = v773;
          *(a1 + 424) = v773;
          goto LABEL_1407;
        case 0x5Eu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x10u;
          v355 = (v6 + 1);
          v354 = *v6;
          if ((v354 & 0x8000000000000000) == 0)
          {
            goto LABEL_589;
          }

          v356 = *v355;
          v354 = (v356 << 7) + v354 - 128;
          if (v356 < 0)
          {
            v593 = google::protobuf::internal::VarintParseSlow64(v6, v354);
            v844 = v593;
            *(a1 + 1046) = v594 != 0;
            if (!v593)
            {
              return 0;
            }
          }

          else
          {
            v355 = (v6 + 2);
LABEL_589:
            v844 = v355;
            *(a1 + 1046) = v354 != 0;
          }

          goto LABEL_1434;
        case 0x5Fu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x8000u;
          v602 = *(a1 + 432);
          if (v602)
          {
            goto LABEL_1408;
          }

          v638 = *(a1 + 8);
          if (v638)
          {
            v638 = *(v638 & 0xFFFFFFFFFFFFFFFELL);
          }

          v639 = MEMORY[0x277C97BF0](v638);
          LODWORD(v602) = v639;
          *(a1 + 432) = v639;
          goto LABEL_1407;
        case 0x60u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x20u;
          v193 = (v6 + 1);
          v192 = *v6;
          if ((v192 & 0x8000000000000000) == 0)
          {
            goto LABEL_319;
          }

          v194 = *v193;
          v192 = (v194 << 7) + v192 - 128;
          if (v194 < 0)
          {
            v485 = google::protobuf::internal::VarintParseSlow64(v6, v192);
            v844 = v485;
            *(a1 + 1047) = v486 != 0;
            if (!v485)
            {
              return 0;
            }
          }

          else
          {
            v193 = (v6 + 2);
LABEL_319:
            v844 = v193;
            *(a1 + 1047) = v192 != 0;
          }

          goto LABEL_1434;
        case 0x61u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x10000u;
          v602 = *(a1 + 440);
          if (v602)
          {
            goto LABEL_1408;
          }

          v819 = *(a1 + 8);
          if (v819)
          {
            v819 = *(v819 & 0xFFFFFFFFFFFFFFFELL);
          }

          v820 = MEMORY[0x277C97BF0](v819);
          LODWORD(v602) = v820;
          *(a1 + 440) = v820;
          goto LABEL_1407;
        case 0x62u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x40u;
          v256 = (v6 + 1);
          v255 = *v6;
          if ((v255 & 0x8000000000000000) == 0)
          {
            goto LABEL_424;
          }

          v257 = *v256;
          v255 = (v257 << 7) + v255 - 128;
          if (v257 < 0)
          {
            v527 = google::protobuf::internal::VarintParseSlow64(v6, v255);
            v844 = v527;
            *(a1 + 1048) = v528 != 0;
            if (!v527)
            {
              return 0;
            }
          }

          else
          {
            v256 = (v6 + 2);
LABEL_424:
            v844 = v256;
            *(a1 + 1048) = v255 != 0;
          }

          goto LABEL_1434;
        case 0x63u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x20000u;
          v602 = *(a1 + 448);
          if (v602)
          {
            goto LABEL_1408;
          }

          v640 = *(a1 + 8);
          if (v640)
          {
            v640 = *(v640 & 0xFFFFFFFFFFFFFFFELL);
          }

          v641 = MEMORY[0x277C97BF0](v640);
          LODWORD(v602) = v641;
          *(a1 + 448) = v641;
          goto LABEL_1407;
        case 0x64u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x80u;
          v31 = (v6 + 1);
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v377 = google::protobuf::internal::VarintParseSlow64(v6, v30);
            v844 = v377;
            *(a1 + 1049) = v378 != 0;
            if (!v377)
            {
              return 0;
            }
          }

          else
          {
            v31 = (v6 + 2);
LABEL_49:
            v844 = v31;
            *(a1 + 1049) = v30 != 0;
          }

          goto LABEL_1434;
        case 0x65u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x40000u;
          v602 = *(a1 + 456);
          if (v602)
          {
            goto LABEL_1408;
          }

          v813 = *(a1 + 8);
          if (v813)
          {
            v813 = *(v813 & 0xFFFFFFFFFFFFFFFELL);
          }

          v814 = MEMORY[0x277C97BF0](v813);
          LODWORD(v602) = v814;
          *(a1 + 456) = v814;
          goto LABEL_1407;
        case 0x66u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x100u;
          v313 = (v6 + 1);
          v312 = *v6;
          if ((v312 & 0x8000000000000000) == 0)
          {
            goto LABEL_519;
          }

          v314 = *v313;
          v312 = (v314 << 7) + v312 - 128;
          if (v314 < 0)
          {
            v565 = google::protobuf::internal::VarintParseSlow64(v6, v312);
            v844 = v565;
            *(a1 + 1050) = v566 != 0;
            if (!v565)
            {
              return 0;
            }
          }

          else
          {
            v313 = (v6 + 2);
LABEL_519:
            v844 = v313;
            *(a1 + 1050) = v312 != 0;
          }

          goto LABEL_1434;
        case 0x67u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x80000u;
          v602 = *(a1 + 464);
          if (v602)
          {
            goto LABEL_1408;
          }

          v626 = *(a1 + 8);
          if (v626)
          {
            v626 = *(v626 & 0xFFFFFFFFFFFFFFFELL);
          }

          v627 = MEMORY[0x277C97BF0](v626);
          LODWORD(v602) = v627;
          *(a1 + 464) = v627;
          goto LABEL_1407;
        case 0x68u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x200u;
          v268 = (v6 + 1);
          v267 = *v6;
          if ((v267 & 0x8000000000000000) == 0)
          {
            goto LABEL_444;
          }

          v269 = *v268;
          v267 = (v269 << 7) + v267 - 128;
          if (v269 < 0)
          {
            v535 = google::protobuf::internal::VarintParseSlow64(v6, v267);
            v844 = v535;
            *(a1 + 1051) = v536 != 0;
            if (!v535)
            {
              return 0;
            }
          }

          else
          {
            v268 = (v6 + 2);
LABEL_444:
            v844 = v268;
            *(a1 + 1051) = v267 != 0;
          }

          goto LABEL_1434;
        case 0x69u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x100000u;
          v602 = *(a1 + 472);
          if (v602)
          {
            goto LABEL_1408;
          }

          v750 = *(a1 + 8);
          if (v750)
          {
            v750 = *(v750 & 0xFFFFFFFFFFFFFFFELL);
          }

          v751 = MEMORY[0x277C97BF0](v750);
          LODWORD(v602) = v751;
          *(a1 + 472) = v751;
          goto LABEL_1407;
        case 0x6Au:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x400u;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v401 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v844 = v401;
            *(a1 + 1052) = v402 != 0;
            if (!v401)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_109:
            v844 = v67;
            *(a1 + 1052) = v66 != 0;
          }

          goto LABEL_1434;
        case 0x6Bu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x200000u;
          v602 = *(a1 + 480);
          if (v602)
          {
            goto LABEL_1408;
          }

          v817 = *(a1 + 8);
          if (v817)
          {
            v817 = *(v817 & 0xFFFFFFFFFFFFFFFELL);
          }

          v818 = MEMORY[0x277C97BF0](v817);
          LODWORD(v602) = v818;
          *(a1 + 480) = v818;
          goto LABEL_1407;
        case 0x6Cu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x800u;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v397 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v844 = v397;
            *(a1 + 1053) = v398 != 0;
            if (!v397)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_99:
            v844 = v61;
            *(a1 + 1053) = v60 != 0;
          }

          goto LABEL_1434;
        case 0x6Du:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x400000u;
          v602 = *(a1 + 488);
          if (v602)
          {
            goto LABEL_1408;
          }

          v730 = *(a1 + 8);
          if (v730)
          {
            v730 = *(v730 & 0xFFFFFFFFFFFFFFFELL);
          }

          v731 = MEMORY[0x277C97BF0](v730);
          LODWORD(v602) = v731;
          *(a1 + 488) = v731;
          goto LABEL_1407;
        case 0x6Eu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x1000u;
          v37 = (v6 + 1);
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v381 = google::protobuf::internal::VarintParseSlow64(v6, v36);
            v844 = v381;
            *(a1 + 1054) = v382 != 0;
            if (!v381)
            {
              return 0;
            }
          }

          else
          {
            v37 = (v6 + 2);
LABEL_59:
            v844 = v37;
            *(a1 + 1054) = v36 != 0;
          }

          goto LABEL_1434;
        case 0x6Fu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x800000u;
          v602 = *(a1 + 496);
          if (v602)
          {
            goto LABEL_1408;
          }

          v616 = *(a1 + 8);
          if (v616)
          {
            v616 = *(v616 & 0xFFFFFFFFFFFFFFFELL);
          }

          v617 = MEMORY[0x277C97BF0](v616);
          LODWORD(v602) = v617;
          *(a1 + 496) = v617;
          goto LABEL_1407;
        case 0x70u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x2000u;
          v259 = (v6 + 1);
          v258 = *v6;
          if ((v258 & 0x8000000000000000) == 0)
          {
            goto LABEL_429;
          }

          v260 = *v259;
          v258 = (v260 << 7) + v258 - 128;
          if (v260 < 0)
          {
            v529 = google::protobuf::internal::VarintParseSlow64(v6, v258);
            v844 = v529;
            *(a1 + 1055) = v530 != 0;
            if (!v529)
            {
              return 0;
            }
          }

          else
          {
            v259 = (v6 + 2);
LABEL_429:
            v844 = v259;
            *(a1 + 1055) = v258 != 0;
          }

          goto LABEL_1434;
        case 0x71u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x1000000u;
          v602 = *(a1 + 504);
          if (v602)
          {
            goto LABEL_1408;
          }

          v642 = *(a1 + 8);
          if (v642)
          {
            v642 = *(v642 & 0xFFFFFFFFFFFFFFFELL);
          }

          v643 = MEMORY[0x277C97BF0](v642);
          LODWORD(v602) = v643;
          *(a1 + 504) = v643;
          goto LABEL_1407;
        case 0x72u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x4000u;
          v328 = (v6 + 1);
          v327 = *v6;
          if ((v327 & 0x8000000000000000) == 0)
          {
            goto LABEL_544;
          }

          v329 = *v328;
          v327 = (v329 << 7) + v327 - 128;
          if (v329 < 0)
          {
            v575 = google::protobuf::internal::VarintParseSlow64(v6, v327);
            v844 = v575;
            *(a1 + 1056) = v576 != 0;
            if (!v575)
            {
              return 0;
            }
          }

          else
          {
            v328 = (v6 + 2);
LABEL_544:
            v844 = v328;
            *(a1 + 1056) = v327 != 0;
          }

          goto LABEL_1434;
        case 0x73u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x2000000u;
          v599 = *(a1 + 512);
          if (v599)
          {
            goto LABEL_1344;
          }

          v805 = *(a1 + 8);
          if (v805)
          {
            v805 = *(v805 & 0xFFFFFFFFFFFFFFFELL);
          }

          v806 = MEMORY[0x277C97C00](v805);
          LODWORD(v599) = v806;
          *(a1 + 512) = v806;
          goto LABEL_1343;
        case 0x74u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x8000u;
          v58 = (v6 + 1);
          v57 = *v6;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v395 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v844 = v395;
            *(a1 + 1057) = v396 != 0;
            if (!v395)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_94:
            v844 = v58;
            *(a1 + 1057) = v57 != 0;
          }

          goto LABEL_1434;
        case 0x75u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x4000000u;
          v599 = *(a1 + 520);
          if (v599)
          {
            goto LABEL_1344;
          }

          v770 = *(a1 + 8);
          if (v770)
          {
            v770 = *(v770 & 0xFFFFFFFFFFFFFFFELL);
          }

          v771 = MEMORY[0x277C97C00](v770);
          LODWORD(v599) = v771;
          *(a1 + 520) = v771;
          goto LABEL_1343;
        case 0x76u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x10000u;
          v331 = (v6 + 1);
          v330 = *v6;
          if ((v330 & 0x8000000000000000) == 0)
          {
            goto LABEL_549;
          }

          v332 = *v331;
          v330 = (v332 << 7) + v330 - 128;
          if (v332 < 0)
          {
            v577 = google::protobuf::internal::VarintParseSlow64(v6, v330);
            v844 = v577;
            *(a1 + 1058) = v578 != 0;
            if (!v577)
            {
              return 0;
            }
          }

          else
          {
            v331 = (v6 + 2);
LABEL_549:
            v844 = v331;
            *(a1 + 1058) = v330 != 0;
          }

          goto LABEL_1434;
        case 0x77u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x8000000u;
          v599 = *(a1 + 528);
          if (v599)
          {
            goto LABEL_1344;
          }

          v716 = *(a1 + 8);
          if (v716)
          {
            v716 = *(v716 & 0xFFFFFFFFFFFFFFFELL);
          }

          v717 = MEMORY[0x277C97C00](v716);
          LODWORD(v599) = v717;
          *(a1 + 528) = v717;
          goto LABEL_1343;
        case 0x78u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x20000u;
          v217 = (v6 + 1);
          v216 = *v6;
          if ((v216 & 0x8000000000000000) == 0)
          {
            goto LABEL_359;
          }

          v218 = *v217;
          v216 = (v218 << 7) + v216 - 128;
          if (v218 < 0)
          {
            v501 = google::protobuf::internal::VarintParseSlow64(v6, v216);
            v844 = v501;
            *(a1 + 1059) = v502 != 0;
            if (!v501)
            {
              return 0;
            }
          }

          else
          {
            v217 = (v6 + 2);
LABEL_359:
            v844 = v217;
            *(a1 + 1059) = v216 != 0;
          }

          goto LABEL_1434;
        case 0x79u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x10000000u;
          v599 = *(a1 + 536);
          if (v599)
          {
            goto LABEL_1344;
          }

          v803 = *(a1 + 8);
          if (v803)
          {
            v803 = *(v803 & 0xFFFFFFFFFFFFFFFELL);
          }

          v804 = MEMORY[0x277C97C00](v803);
          LODWORD(v599) = v804;
          *(a1 + 536) = v804;
          goto LABEL_1343;
        case 0x7Au:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x40000u;
          v52 = (v6 + 1);
          v51 = *v6;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v391 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            v844 = v391;
            *(a1 + 1060) = v392 != 0;
            if (!v391)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_84:
            v844 = v52;
            *(a1 + 1060) = v51 != 0;
          }

          goto LABEL_1434;
        case 0x7Bu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x20000000u;
          v599 = *(a1 + 544);
          if (v599)
          {
            goto LABEL_1344;
          }

          v662 = *(a1 + 8);
          if (v662)
          {
            v662 = *(v662 & 0xFFFFFFFFFFFFFFFELL);
          }

          v663 = MEMORY[0x277C97C00](v662);
          LODWORD(v599) = v663;
          *(a1 + 544) = v663;
          goto LABEL_1343;
        case 0x7Cu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x80000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v375 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v844 = v375;
            *(a1 + 1061) = v376 != 0;
            if (!v375)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v844 = v28;
            *(a1 + 1061) = v27 != 0;
          }

          goto LABEL_1434;
        case 0x7Du:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x40000000u;
          v599 = *(a1 + 552);
          if (v599)
          {
            goto LABEL_1344;
          }

          v736 = *(a1 + 8);
          if (v736)
          {
            v736 = *(v736 & 0xFFFFFFFFFFFFFFFELL);
          }

          v737 = MEMORY[0x277C97C00](v736);
          LODWORD(v599) = v737;
          *(a1 + 552) = v737;
          goto LABEL_1343;
        case 0x7Eu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x100000u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v379 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v844 = v379;
            *(a1 + 1062) = v380 != 0;
            if (!v379)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_54:
            v844 = v34;
            *(a1 + 1062) = v33 != 0;
          }

          goto LABEL_1434;
        case 0x7Fu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 20) |= 0x80000000;
          v599 = *(a1 + 560);
          if (v599)
          {
            goto LABEL_1344;
          }

          v792 = *(a1 + 8);
          if (v792)
          {
            v792 = *(v792 & 0xFFFFFFFFFFFFFFFELL);
          }

          v793 = MEMORY[0x277C97C00](v792);
          LODWORD(v599) = v793;
          *(a1 + 560) = v793;
          goto LABEL_1343;
        case 0x80u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x200000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v393 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v844 = v393;
            *(a1 + 1063) = v394 != 0;
            if (!v393)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_89:
            v844 = v55;
            *(a1 + 1063) = v54 != 0;
          }

          goto LABEL_1434;
        case 0x81u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 1u;
          v599 = *(a1 + 568);
          if (v599)
          {
            goto LABEL_1344;
          }

          v618 = *(a1 + 8);
          if (v618)
          {
            v618 = *(v618 & 0xFFFFFFFFFFFFFFFELL);
          }

          v619 = MEMORY[0x277C97C00](v618);
          LODWORD(v599) = v619;
          *(a1 + 568) = v619;
          goto LABEL_1343;
        case 0x82u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x400000u;
          v298 = (v6 + 1);
          v297 = *v6;
          if ((v297 & 0x8000000000000000) == 0)
          {
            goto LABEL_494;
          }

          v299 = *v298;
          v297 = (v299 << 7) + v297 - 128;
          if (v299 < 0)
          {
            v555 = google::protobuf::internal::VarintParseSlow64(v6, v297);
            v844 = v555;
            *(a1 + 1064) = v556 != 0;
            if (!v555)
            {
              return 0;
            }
          }

          else
          {
            v298 = (v6 + 2);
LABEL_494:
            v844 = v298;
            *(a1 + 1064) = v297 != 0;
          }

          goto LABEL_1434;
        case 0x83u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 2u;
          v599 = *(a1 + 576);
          if (v599)
          {
            goto LABEL_1344;
          }

          v654 = *(a1 + 8);
          if (v654)
          {
            v654 = *(v654 & 0xFFFFFFFFFFFFFFFELL);
          }

          v655 = MEMORY[0x277C97C00](v654);
          LODWORD(v599) = v655;
          *(a1 + 576) = v655;
          goto LABEL_1343;
        case 0x84u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x800000u;
          v316 = (v6 + 1);
          v315 = *v6;
          if ((v315 & 0x8000000000000000) == 0)
          {
            goto LABEL_524;
          }

          v317 = *v316;
          v315 = (v317 << 7) + v315 - 128;
          if (v317 < 0)
          {
            v567 = google::protobuf::internal::VarintParseSlow64(v6, v315);
            v844 = v567;
            *(a1 + 1065) = v568 != 0;
            if (!v567)
            {
              return 0;
            }
          }

          else
          {
            v316 = (v6 + 2);
LABEL_524:
            v844 = v316;
            *(a1 + 1065) = v315 != 0;
          }

          goto LABEL_1434;
        case 0x85u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 4u;
          v599 = *(a1 + 584);
          if (v599)
          {
            goto LABEL_1344;
          }

          v631 = *(a1 + 8);
          if (v631)
          {
            v631 = *(v631 & 0xFFFFFFFFFFFFFFFELL);
          }

          v632 = MEMORY[0x277C97C00](v631);
          LODWORD(v599) = v632;
          *(a1 + 584) = v632;
          goto LABEL_1343;
        case 0x86u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x1000000u;
          v181 = (v6 + 1);
          v180 = *v6;
          if ((v180 & 0x8000000000000000) == 0)
          {
            goto LABEL_299;
          }

          v182 = *v181;
          v180 = (v182 << 7) + v180 - 128;
          if (v182 < 0)
          {
            v477 = google::protobuf::internal::VarintParseSlow64(v6, v180);
            v844 = v477;
            *(a1 + 1066) = v478 != 0;
            if (!v477)
            {
              return 0;
            }
          }

          else
          {
            v181 = (v6 + 2);
LABEL_299:
            v844 = v181;
            *(a1 + 1066) = v180 != 0;
          }

          goto LABEL_1434;
        case 0x87u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 8u;
          v608 = *(a1 + 592);
          if (v608)
          {
            goto LABEL_1432;
          }

          v674 = *(a1 + 8);
          if (v674)
          {
            v674 = *(v674 & 0xFFFFFFFFFFFFFFFELL);
          }

          v675 = MEMORY[0x277C97BE0](v674);
          LODWORD(v608) = v675;
          *(a1 + 592) = v675;
          goto LABEL_1431;
        case 0x88u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x2000000u;
          v148 = (v6 + 1);
          v147 = *v6;
          if ((v147 & 0x8000000000000000) == 0)
          {
            goto LABEL_244;
          }

          v149 = *v148;
          v147 = (v149 << 7) + v147 - 128;
          if (v149 < 0)
          {
            v455 = google::protobuf::internal::VarintParseSlow64(v6, v147);
            v844 = v455;
            *(a1 + 1067) = v456 != 0;
            if (!v455)
            {
              return 0;
            }
          }

          else
          {
            v148 = (v6 + 2);
LABEL_244:
            v844 = v148;
            *(a1 + 1067) = v147 != 0;
          }

          goto LABEL_1434;
        case 0x89u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x10u;
          v608 = *(a1 + 600);
          if (v608)
          {
            goto LABEL_1432;
          }

          v809 = *(a1 + 8);
          if (v809)
          {
            v809 = *(v809 & 0xFFFFFFFFFFFFFFFELL);
          }

          v810 = MEMORY[0x277C97BE0](v809);
          LODWORD(v608) = v810;
          *(a1 + 600) = v810;
          goto LABEL_1431;
        case 0x8Au:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x4000000u;
          v76 = (v6 + 1);
          v75 = *v6;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_124;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v407 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v844 = v407;
            *(a1 + 1068) = v408 != 0;
            if (!v407)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_124:
            v844 = v76;
            *(a1 + 1068) = v75 != 0;
          }

          goto LABEL_1434;
        case 0x8Bu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x20u;
          v608 = *(a1 + 608);
          if (v608)
          {
            goto LABEL_1432;
          }

          v692 = *(a1 + 8);
          if (v692)
          {
            v692 = *(v692 & 0xFFFFFFFFFFFFFFFELL);
          }

          v693 = MEMORY[0x277C97BE0](v692);
          LODWORD(v608) = v693;
          *(a1 + 608) = v693;
          goto LABEL_1431;
        case 0x8Cu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x8000000u;
          v325 = (v6 + 1);
          v324 = *v6;
          if ((v324 & 0x8000000000000000) == 0)
          {
            goto LABEL_539;
          }

          v326 = *v325;
          v324 = (v326 << 7) + v324 - 128;
          if (v326 < 0)
          {
            v573 = google::protobuf::internal::VarintParseSlow64(v6, v324);
            v844 = v573;
            *(a1 + 1069) = v574 != 0;
            if (!v573)
            {
              return 0;
            }
          }

          else
          {
            v325 = (v6 + 2);
LABEL_539:
            v844 = v325;
            *(a1 + 1069) = v324 != 0;
          }

          goto LABEL_1434;
        case 0x8Du:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x40u;
          v608 = *(a1 + 616);
          if (v608)
          {
            goto LABEL_1432;
          }

          v644 = *(a1 + 8);
          if (v644)
          {
            v644 = *(v644 & 0xFFFFFFFFFFFFFFFELL);
          }

          v645 = MEMORY[0x277C97BE0](v644);
          LODWORD(v608) = v645;
          *(a1 + 616) = v645;
          goto LABEL_1431;
        case 0x8Eu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x10000000u;
          v169 = (v6 + 1);
          v168 = *v6;
          if ((v168 & 0x8000000000000000) == 0)
          {
            goto LABEL_279;
          }

          v170 = *v169;
          v168 = (v170 << 7) + v168 - 128;
          if (v170 < 0)
          {
            v469 = google::protobuf::internal::VarintParseSlow64(v6, v168);
            v844 = v469;
            *(a1 + 1070) = v470 != 0;
            if (!v469)
            {
              return 0;
            }
          }

          else
          {
            v169 = (v6 + 2);
LABEL_279:
            v844 = v169;
            *(a1 + 1070) = v168 != 0;
          }

          goto LABEL_1434;
        case 0x8Fu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x80u;
          v608 = *(a1 + 624);
          if (v608)
          {
            goto LABEL_1432;
          }

          v704 = *(a1 + 8);
          if (v704)
          {
            v704 = *(v704 & 0xFFFFFFFFFFFFFFFELL);
          }

          v705 = MEMORY[0x277C97BE0](v704);
          LODWORD(v608) = v705;
          *(a1 + 624) = v705;
          goto LABEL_1431;
        case 0x90u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x20000000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_209;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v441 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v844 = v441;
            *(a1 + 1071) = v442 != 0;
            if (!v441)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_209:
            v844 = v127;
            *(a1 + 1071) = v126 != 0;
          }

          goto LABEL_1434;
        case 0x91u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x100u;
          v608 = *(a1 + 632);
          if (v608)
          {
            goto LABEL_1432;
          }

          v648 = *(a1 + 8);
          if (v648)
          {
            v648 = *(v648 & 0xFFFFFFFFFFFFFFFELL);
          }

          v649 = MEMORY[0x277C97BE0](v648);
          LODWORD(v608) = v649;
          *(a1 + 632) = v649;
          goto LABEL_1431;
        case 0x92u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x40000000u;
          v103 = (v6 + 1);
          v102 = *v6;
          if ((v102 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v104 = *v103;
          v102 = (v104 << 7) + v102 - 128;
          if (v104 < 0)
          {
            v425 = google::protobuf::internal::VarintParseSlow64(v6, v102);
            v844 = v425;
            *(a1 + 1072) = v426 != 0;
            if (!v425)
            {
              return 0;
            }
          }

          else
          {
            v103 = (v6 + 2);
LABEL_169:
            v844 = v103;
            *(a1 + 1072) = v102 != 0;
          }

          goto LABEL_1434;
        case 0x93u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x200u;
          v608 = *(a1 + 640);
          if (v608)
          {
            goto LABEL_1432;
          }

          v786 = *(a1 + 8);
          if (v786)
          {
            v786 = *(v786 & 0xFFFFFFFFFFFFFFFELL);
          }

          v787 = MEMORY[0x277C97BE0](v786);
          LODWORD(v608) = v787;
          *(a1 + 640) = v787;
LABEL_1431:
          v6 = v844;
LABEL_1432:
          v800 = sub_2764A9B0C(a3, v608, v6);
          goto LABEL_1433;
        case 0x94u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 36) |= 0x80000000;
          v109 = (v6 + 1);
          v108 = *v6;
          if ((v108 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v110 = *v109;
          v108 = (v110 << 7) + v108 - 128;
          if (v110 < 0)
          {
            v429 = google::protobuf::internal::VarintParseSlow64(v6, v108);
            v844 = v429;
            *(a1 + 1073) = v430 != 0;
            if (!v429)
            {
              return 0;
            }
          }

          else
          {
            v109 = (v6 + 2);
LABEL_179:
            v844 = v109;
            *(a1 + 1073) = v108 != 0;
          }

          goto LABEL_1434;
        case 0x95u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x400u;
          v635 = *(a1 + 648);
          if (v635)
          {
            goto LABEL_1322;
          }

          v636 = *(a1 + 8);
          if (v636)
          {
            v636 = *(v636 & 0xFFFFFFFFFFFFFFFELL);
          }

          v637 = MEMORY[0x277C97C20](v636);
          LODWORD(v635) = v637;
          *(a1 + 648) = v637;
          goto LABEL_1321;
        case 0x96u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 1u;
          v304 = (v6 + 1);
          v303 = *v6;
          if ((v303 & 0x8000000000000000) == 0)
          {
            goto LABEL_504;
          }

          v305 = *v304;
          v303 = (v305 << 7) + v303 - 128;
          if (v305 < 0)
          {
            v559 = google::protobuf::internal::VarintParseSlow64(v6, v303);
            v844 = v559;
            *(a1 + 1074) = v560 != 0;
            if (!v559)
            {
              return 0;
            }
          }

          else
          {
            v304 = (v6 + 2);
LABEL_504:
            v844 = v304;
            *(a1 + 1074) = v303 != 0;
          }

          goto LABEL_1434;
        case 0x97u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x800u;
          v635 = *(a1 + 656);
          if (v635)
          {
            goto LABEL_1322;
          }

          v790 = *(a1 + 8);
          if (v790)
          {
            v790 = *(v790 & 0xFFFFFFFFFFFFFFFELL);
          }

          v791 = MEMORY[0x277C97C20](v790);
          LODWORD(v635) = v791;
          *(a1 + 656) = v791;
          goto LABEL_1321;
        case 0x98u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 2u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_184;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v431 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v844 = v431;
            *(a1 + 1075) = v432 != 0;
            if (!v431)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_184:
            v844 = v112;
            *(a1 + 1075) = v111 != 0;
          }

          goto LABEL_1434;
        case 0x99u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x1000u;
          v635 = *(a1 + 664);
          if (v635)
          {
            goto LABEL_1322;
          }

          v798 = *(a1 + 8);
          if (v798)
          {
            v798 = *(v798 & 0xFFFFFFFFFFFFFFFELL);
          }

          v799 = MEMORY[0x277C97C20](v798);
          LODWORD(v635) = v799;
          *(a1 + 664) = v799;
          goto LABEL_1321;
        case 0x9Au:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 4u;
          v274 = (v6 + 1);
          v273 = *v6;
          if ((v273 & 0x8000000000000000) == 0)
          {
            goto LABEL_454;
          }

          v275 = *v274;
          v273 = (v275 << 7) + v273 - 128;
          if (v275 < 0)
          {
            v539 = google::protobuf::internal::VarintParseSlow64(v6, v273);
            v844 = v539;
            *(a1 + 1076) = v540 != 0;
            if (!v539)
            {
              return 0;
            }
          }

          else
          {
            v274 = (v6 + 2);
LABEL_454:
            v844 = v274;
            *(a1 + 1076) = v273 != 0;
          }

          goto LABEL_1434;
        case 0x9Bu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x2000u;
          v635 = *(a1 + 672);
          if (v635)
          {
            goto LABEL_1322;
          }

          v796 = *(a1 + 8);
          if (v796)
          {
            v796 = *(v796 & 0xFFFFFFFFFFFFFFFELL);
          }

          v797 = MEMORY[0x277C97C20](v796);
          LODWORD(v635) = v797;
          *(a1 + 672) = v797;
          goto LABEL_1321;
        case 0x9Cu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 8u;
          v226 = (v6 + 1);
          v225 = *v6;
          if ((v225 & 0x8000000000000000) == 0)
          {
            goto LABEL_374;
          }

          v227 = *v226;
          v225 = (v227 << 7) + v225 - 128;
          if (v227 < 0)
          {
            v507 = google::protobuf::internal::VarintParseSlow64(v6, v225);
            v844 = v507;
            *(a1 + 1077) = v508 != 0;
            if (!v507)
            {
              return 0;
            }
          }

          else
          {
            v226 = (v6 + 2);
LABEL_374:
            v844 = v226;
            *(a1 + 1077) = v225 != 0;
          }

          goto LABEL_1434;
        case 0x9Du:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x4000u;
          v635 = *(a1 + 680);
          if (v635)
          {
            goto LABEL_1322;
          }

          v778 = *(a1 + 8);
          if (v778)
          {
            v778 = *(v778 & 0xFFFFFFFFFFFFFFFELL);
          }

          v779 = MEMORY[0x277C97C20](v778);
          LODWORD(v635) = v779;
          *(a1 + 680) = v779;
          goto LABEL_1321;
        case 0x9Eu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x10u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_214;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v443 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v844 = v443;
            *(a1 + 1078) = v444 != 0;
            if (!v443)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_214:
            v844 = v130;
            *(a1 + 1078) = v129 != 0;
          }

          goto LABEL_1434;
        case 0x9Fu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x8000u;
          v635 = *(a1 + 688);
          if (v635)
          {
            goto LABEL_1322;
          }

          v758 = *(a1 + 8);
          if (v758)
          {
            v758 = *(v758 & 0xFFFFFFFFFFFFFFFELL);
          }

          v759 = MEMORY[0x277C97C20](v758);
          LODWORD(v635) = v759;
          *(a1 + 688) = v759;
          goto LABEL_1321;
        case 0xA0u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x20u;
          v229 = (v6 + 1);
          v228 = *v6;
          if ((v228 & 0x8000000000000000) == 0)
          {
            goto LABEL_379;
          }

          v230 = *v229;
          v228 = (v230 << 7) + v228 - 128;
          if (v230 < 0)
          {
            v509 = google::protobuf::internal::VarintParseSlow64(v6, v228);
            v844 = v509;
            *(a1 + 1079) = v510 != 0;
            if (!v509)
            {
              return 0;
            }
          }

          else
          {
            v229 = (v6 + 2);
LABEL_379:
            v844 = v229;
            *(a1 + 1079) = v228 != 0;
          }

          goto LABEL_1434;
        case 0xA1u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x10000u;
          v635 = *(a1 + 696);
          if (v635)
          {
            goto LABEL_1322;
          }

          v670 = *(a1 + 8);
          if (v670)
          {
            v670 = *(v670 & 0xFFFFFFFFFFFFFFFELL);
          }

          v671 = MEMORY[0x277C97C20](v670);
          LODWORD(v635) = v671;
          *(a1 + 696) = v671;
          goto LABEL_1321;
        case 0xA2u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x40u;
          v283 = (v6 + 1);
          v282 = *v6;
          if ((v282 & 0x8000000000000000) == 0)
          {
            goto LABEL_469;
          }

          v284 = *v283;
          v282 = (v284 << 7) + v282 - 128;
          if (v284 < 0)
          {
            v545 = google::protobuf::internal::VarintParseSlow64(v6, v282);
            v844 = v545;
            *(a1 + 1080) = v546 != 0;
            if (!v545)
            {
              return 0;
            }
          }

          else
          {
            v283 = (v6 + 2);
LABEL_469:
            v844 = v283;
            *(a1 + 1080) = v282 != 0;
          }

          goto LABEL_1434;
        case 0xA3u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x20000u;
          v635 = *(a1 + 704);
          if (v635)
          {
            goto LABEL_1322;
          }

          v686 = *(a1 + 8);
          if (v686)
          {
            v686 = *(v686 & 0xFFFFFFFFFFFFFFFELL);
          }

          v687 = MEMORY[0x277C97C20](v686);
          LODWORD(v635) = v687;
          *(a1 + 704) = v687;
          goto LABEL_1321;
        case 0xA4u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x80u;
          v91 = (v6 + 1);
          v90 = *v6;
          if ((v90 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v92 = *v91;
          v90 = (v92 << 7) + v90 - 128;
          if (v92 < 0)
          {
            v417 = google::protobuf::internal::VarintParseSlow64(v6, v90);
            v844 = v417;
            *(a1 + 1081) = v418 != 0;
            if (!v417)
            {
              return 0;
            }
          }

          else
          {
            v91 = (v6 + 2);
LABEL_149:
            v844 = v91;
            *(a1 + 1081) = v90 != 0;
          }

          goto LABEL_1434;
        case 0xA5u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x40000u;
          v635 = *(a1 + 712);
          if (v635)
          {
            goto LABEL_1322;
          }

          v780 = *(a1 + 8);
          if (v780)
          {
            v780 = *(v780 & 0xFFFFFFFFFFFFFFFELL);
          }

          v781 = MEMORY[0x277C97C20](v780);
          LODWORD(v635) = v781;
          *(a1 + 712) = v781;
          goto LABEL_1321;
        case 0xA6u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x100u;
          v124 = (v6 + 1);
          v123 = *v6;
          if ((v123 & 0x8000000000000000) == 0)
          {
            goto LABEL_204;
          }

          v125 = *v124;
          v123 = (v125 << 7) + v123 - 128;
          if (v125 < 0)
          {
            v439 = google::protobuf::internal::VarintParseSlow64(v6, v123);
            v844 = v439;
            *(a1 + 1082) = v440 != 0;
            if (!v439)
            {
              return 0;
            }
          }

          else
          {
            v124 = (v6 + 2);
LABEL_204:
            v844 = v124;
            *(a1 + 1082) = v123 != 0;
          }

          goto LABEL_1434;
        case 0xA7u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x80000u;
          v635 = *(a1 + 720);
          if (v635)
          {
            goto LABEL_1322;
          }

          v690 = *(a1 + 8);
          if (v690)
          {
            v690 = *(v690 & 0xFFFFFFFFFFFFFFFELL);
          }

          v691 = MEMORY[0x277C97C20](v690);
          LODWORD(v635) = v691;
          *(a1 + 720) = v691;
          goto LABEL_1321;
        case 0xA8u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x200u;
          v289 = (v6 + 1);
          v288 = *v6;
          if ((v288 & 0x8000000000000000) == 0)
          {
            goto LABEL_479;
          }

          v290 = *v289;
          v288 = (v290 << 7) + v288 - 128;
          if (v290 < 0)
          {
            v549 = google::protobuf::internal::VarintParseSlow64(v6, v288);
            v844 = v549;
            *(a1 + 1083) = v550 != 0;
            if (!v549)
            {
              return 0;
            }
          }

          else
          {
            v289 = (v6 + 2);
LABEL_479:
            v844 = v289;
            *(a1 + 1083) = v288 != 0;
          }

          goto LABEL_1434;
        case 0xA9u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x100000u;
          v635 = *(a1 + 728);
          if (v635)
          {
            goto LABEL_1322;
          }

          v672 = *(a1 + 8);
          if (v672)
          {
            v672 = *(v672 & 0xFFFFFFFFFFFFFFFELL);
          }

          v673 = MEMORY[0x277C97C20](v672);
          LODWORD(v635) = v673;
          *(a1 + 728) = v673;
          goto LABEL_1321;
        case 0xAAu:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x400u;
          v292 = (v6 + 1);
          v291 = *v6;
          if ((v291 & 0x8000000000000000) == 0)
          {
            goto LABEL_484;
          }

          v293 = *v292;
          v291 = (v293 << 7) + v291 - 128;
          if (v293 < 0)
          {
            v551 = google::protobuf::internal::VarintParseSlow64(v6, v291);
            v844 = v551;
            *(a1 + 1084) = v552 != 0;
            if (!v551)
            {
              return 0;
            }
          }

          else
          {
            v292 = (v6 + 2);
LABEL_484:
            v844 = v292;
            *(a1 + 1084) = v291 != 0;
          }

          goto LABEL_1434;
        case 0xABu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x200000u;
          v635 = *(a1 + 736);
          if (v635)
          {
            goto LABEL_1322;
          }

          v752 = *(a1 + 8);
          if (v752)
          {
            v752 = *(v752 & 0xFFFFFFFFFFFFFFFELL);
          }

          v753 = MEMORY[0x277C97C20](v752);
          LODWORD(v635) = v753;
          *(a1 + 736) = v753;
LABEL_1321:
          v6 = v844;
LABEL_1322:
          v800 = sub_2764A95F8(a3, v635, v6);
          goto LABEL_1433;
        case 0xACu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x800u;
          v121 = (v6 + 1);
          v120 = *v6;
          if ((v120 & 0x8000000000000000) == 0)
          {
            goto LABEL_199;
          }

          v122 = *v121;
          v120 = (v122 << 7) + v120 - 128;
          if (v122 < 0)
          {
            v437 = google::protobuf::internal::VarintParseSlow64(v6, v120);
            v844 = v437;
            *(a1 + 1085) = v438 != 0;
            if (!v437)
            {
              return 0;
            }
          }

          else
          {
            v121 = (v6 + 2);
LABEL_199:
            v844 = v121;
            *(a1 + 1085) = v120 != 0;
          }

          goto LABEL_1434;
        case 0xADu:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x400000u;
          v628 = *(a1 + 744);
          if (v628)
          {
            goto LABEL_1391;
          }

          v742 = *(a1 + 8);
          if (v742)
          {
            v742 = *(v742 & 0xFFFFFFFFFFFFFFFELL);
          }

          v743 = MEMORY[0x277C97C40](v742);
          LODWORD(v628) = v743;
          *(a1 + 744) = v743;
          goto LABEL_1390;
        case 0xAEu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x1000u;
          v79 = (v6 + 1);
          v78 = *v6;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_129;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v409 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v844 = v409;
            *(a1 + 1086) = v410 != 0;
            if (!v409)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_129:
            v844 = v79;
            *(a1 + 1086) = v78 != 0;
          }

          goto LABEL_1434;
        case 0xAFu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x800000u;
          v628 = *(a1 + 752);
          if (v628)
          {
            goto LABEL_1391;
          }

          v646 = *(a1 + 8);
          if (v646)
          {
            v646 = *(v646 & 0xFFFFFFFFFFFFFFFELL);
          }

          v647 = MEMORY[0x277C97C40](v646);
          LODWORD(v628) = v647;
          *(a1 + 752) = v647;
          goto LABEL_1390;
        case 0xB0u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x2000u;
          v157 = (v6 + 1);
          v156 = *v6;
          if ((v156 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v158 = *v157;
          v156 = (v158 << 7) + v156 - 128;
          if (v158 < 0)
          {
            v461 = google::protobuf::internal::VarintParseSlow64(v6, v156);
            v844 = v461;
            *(a1 + 1087) = v462 != 0;
            if (!v461)
            {
              return 0;
            }
          }

          else
          {
            v157 = (v6 + 2);
LABEL_259:
            v844 = v157;
            *(a1 + 1087) = v156 != 0;
          }

          goto LABEL_1434;
        case 0xB1u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x1000000u;
          v628 = *(a1 + 760);
          if (v628)
          {
            goto LABEL_1391;
          }

          v782 = *(a1 + 8);
          if (v782)
          {
            v782 = *(v782 & 0xFFFFFFFFFFFFFFFELL);
          }

          v783 = MEMORY[0x277C97C40](v782);
          LODWORD(v628) = v783;
          *(a1 + 760) = v783;
          goto LABEL_1390;
        case 0xB2u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x4000u;
          v136 = (v6 + 1);
          v135 = *v6;
          if ((v135 & 0x8000000000000000) == 0)
          {
            goto LABEL_224;
          }

          v137 = *v136;
          v135 = (v137 << 7) + v135 - 128;
          if (v137 < 0)
          {
            v447 = google::protobuf::internal::VarintParseSlow64(v6, v135);
            v844 = v447;
            *(a1 + 1088) = v448 != 0;
            if (!v447)
            {
              return 0;
            }
          }

          else
          {
            v136 = (v6 + 2);
LABEL_224:
            v844 = v136;
            *(a1 + 1088) = v135 != 0;
          }

          goto LABEL_1434;
        case 0xB3u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x2000000u;
          v628 = *(a1 + 768);
          if (v628)
          {
            goto LABEL_1391;
          }

          v658 = *(a1 + 8);
          if (v658)
          {
            v658 = *(v658 & 0xFFFFFFFFFFFFFFFELL);
          }

          v659 = MEMORY[0x277C97C40](v658);
          LODWORD(v628) = v659;
          *(a1 + 768) = v659;
          goto LABEL_1390;
        case 0xB4u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x8000u;
          v133 = (v6 + 1);
          v132 = *v6;
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_219;
          }

          v134 = *v133;
          v132 = (v134 << 7) + v132 - 128;
          if (v134 < 0)
          {
            v445 = google::protobuf::internal::VarintParseSlow64(v6, v132);
            v844 = v445;
            *(a1 + 1089) = v446 != 0;
            if (!v445)
            {
              return 0;
            }
          }

          else
          {
            v133 = (v6 + 2);
LABEL_219:
            v844 = v133;
            *(a1 + 1089) = v132 != 0;
          }

          goto LABEL_1434;
        case 0xB5u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x4000000u;
          v628 = *(a1 + 776);
          if (v628)
          {
            goto LABEL_1391;
          }

          v748 = *(a1 + 8);
          if (v748)
          {
            v748 = *(v748 & 0xFFFFFFFFFFFFFFFELL);
          }

          v749 = MEMORY[0x277C97C40](v748);
          LODWORD(v628) = v749;
          *(a1 + 776) = v749;
          goto LABEL_1390;
        case 0xB6u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x10000u;
          v277 = (v6 + 1);
          v276 = *v6;
          if ((v276 & 0x8000000000000000) == 0)
          {
            goto LABEL_459;
          }

          v278 = *v277;
          v276 = (v278 << 7) + v276 - 128;
          if (v278 < 0)
          {
            v541 = google::protobuf::internal::VarintParseSlow64(v6, v276);
            v844 = v541;
            *(a1 + 1090) = v542 != 0;
            if (!v541)
            {
              return 0;
            }
          }

          else
          {
            v277 = (v6 + 2);
LABEL_459:
            v844 = v277;
            *(a1 + 1090) = v276 != 0;
          }

          goto LABEL_1434;
        case 0xB7u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x8000000u;
          v628 = *(a1 + 784);
          if (v628)
          {
            goto LABEL_1391;
          }

          v728 = *(a1 + 8);
          if (v728)
          {
            v728 = *(v728 & 0xFFFFFFFFFFFFFFFELL);
          }

          v729 = MEMORY[0x277C97C40](v728);
          LODWORD(v628) = v729;
          *(a1 + 784) = v729;
          goto LABEL_1390;
        case 0xB8u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x20000u;
          v253 = (v6 + 1);
          v252 = *v6;
          if ((v252 & 0x8000000000000000) == 0)
          {
            goto LABEL_419;
          }

          v254 = *v253;
          v252 = (v254 << 7) + v252 - 128;
          if (v254 < 0)
          {
            v525 = google::protobuf::internal::VarintParseSlow64(v6, v252);
            v844 = v525;
            *(a1 + 1091) = v526 != 0;
            if (!v525)
            {
              return 0;
            }
          }

          else
          {
            v253 = (v6 + 2);
LABEL_419:
            v844 = v253;
            *(a1 + 1091) = v252 != 0;
          }

          goto LABEL_1434;
        case 0xB9u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x10000000u;
          v599 = *(a1 + 792);
          if (v599)
          {
            goto LABEL_1344;
          }

          v764 = *(a1 + 8);
          if (v764)
          {
            v764 = *(v764 & 0xFFFFFFFFFFFFFFFELL);
          }

          v765 = MEMORY[0x277C97C00](v764);
          LODWORD(v599) = v765;
          *(a1 + 792) = v765;
          goto LABEL_1343;
        case 0xBAu:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x40000u;
          v142 = (v6 + 1);
          v141 = *v6;
          if ((v141 & 0x8000000000000000) == 0)
          {
            goto LABEL_234;
          }

          v143 = *v142;
          v141 = (v143 << 7) + v141 - 128;
          if (v143 < 0)
          {
            v451 = google::protobuf::internal::VarintParseSlow64(v6, v141);
            v844 = v451;
            *(a1 + 1092) = v452 != 0;
            if (!v451)
            {
              return 0;
            }
          }

          else
          {
            v142 = (v6 + 2);
LABEL_234:
            v844 = v142;
            *(a1 + 1092) = v141 != 0;
          }

          goto LABEL_1434;
        case 0xBBu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x20000000u;
          v599 = *(a1 + 800);
          if (v599)
          {
            goto LABEL_1344;
          }

          v694 = *(a1 + 8);
          if (v694)
          {
            v694 = *(v694 & 0xFFFFFFFFFFFFFFFELL);
          }

          v695 = MEMORY[0x277C97C00](v694);
          LODWORD(v599) = v695;
          *(a1 + 800) = v695;
          goto LABEL_1343;
        case 0xBCu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x80000u;
          v247 = (v6 + 1);
          v246 = *v6;
          if ((v246 & 0x8000000000000000) == 0)
          {
            goto LABEL_409;
          }

          v248 = *v247;
          v246 = (v248 << 7) + v246 - 128;
          if (v248 < 0)
          {
            v521 = google::protobuf::internal::VarintParseSlow64(v6, v246);
            v844 = v521;
            *(a1 + 1093) = v522 != 0;
            if (!v521)
            {
              return 0;
            }
          }

          else
          {
            v247 = (v6 + 2);
LABEL_409:
            v844 = v247;
            *(a1 + 1093) = v246 != 0;
          }

          goto LABEL_1434;
        case 0xBDu:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x40000000u;
          v599 = *(a1 + 808);
          if (v599)
          {
            goto LABEL_1344;
          }

          v784 = *(a1 + 8);
          if (v784)
          {
            v784 = *(v784 & 0xFFFFFFFFFFFFFFFELL);
          }

          v785 = MEMORY[0x277C97C00](v784);
          LODWORD(v599) = v785;
          *(a1 + 808) = v785;
          goto LABEL_1343;
        case 0xBEu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x100000u;
          v145 = (v6 + 1);
          v144 = *v6;
          if ((v144 & 0x8000000000000000) == 0)
          {
            goto LABEL_239;
          }

          v146 = *v145;
          v144 = (v146 << 7) + v144 - 128;
          if (v146 < 0)
          {
            v453 = google::protobuf::internal::VarintParseSlow64(v6, v144);
            v844 = v453;
            *(a1 + 1094) = v454 != 0;
            if (!v453)
            {
              return 0;
            }
          }

          else
          {
            v145 = (v6 + 2);
LABEL_239:
            v844 = v145;
            *(a1 + 1094) = v144 != 0;
          }

          goto LABEL_1434;
        case 0xBFu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 24) |= 0x80000000;
          v599 = *(a1 + 816);
          if (v599)
          {
            goto LABEL_1344;
          }

          v768 = *(a1 + 8);
          if (v768)
          {
            v768 = *(v768 & 0xFFFFFFFFFFFFFFFELL);
          }

          v769 = MEMORY[0x277C97C00](v768);
          LODWORD(v599) = v769;
          *(a1 + 816) = v769;
          goto LABEL_1343;
        case 0xC0u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x200000u;
          v262 = (v6 + 1);
          v261 = *v6;
          if ((v261 & 0x8000000000000000) == 0)
          {
            goto LABEL_434;
          }

          v263 = *v262;
          v261 = (v263 << 7) + v261 - 128;
          if (v263 < 0)
          {
            v531 = google::protobuf::internal::VarintParseSlow64(v6, v261);
            v844 = v531;
            *(a1 + 1095) = v532 != 0;
            if (!v531)
            {
              return 0;
            }
          }

          else
          {
            v262 = (v6 + 2);
LABEL_434:
            v844 = v262;
            *(a1 + 1095) = v261 != 0;
          }

          goto LABEL_1434;
        case 0xC1u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 1u;
          v599 = *(a1 + 824);
          if (v599)
          {
            goto LABEL_1344;
          }

          v756 = *(a1 + 8);
          if (v756)
          {
            v756 = *(v756 & 0xFFFFFFFFFFFFFFFELL);
          }

          v757 = MEMORY[0x277C97C00](v756);
          LODWORD(v599) = v757;
          *(a1 + 824) = v757;
          goto LABEL_1343;
        case 0xC2u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x400000u;
          v265 = (v6 + 1);
          v264 = *v6;
          if ((v264 & 0x8000000000000000) == 0)
          {
            goto LABEL_439;
          }

          v266 = *v265;
          v264 = (v266 << 7) + v264 - 128;
          if (v266 < 0)
          {
            v533 = google::protobuf::internal::VarintParseSlow64(v6, v264);
            v844 = v533;
            *(a1 + 1096) = v534 != 0;
            if (!v533)
            {
              return 0;
            }
          }

          else
          {
            v265 = (v6 + 2);
LABEL_439:
            v844 = v265;
            *(a1 + 1096) = v264 != 0;
          }

          goto LABEL_1434;
        case 0xC3u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 2u;
          v599 = *(a1 + 832);
          if (v599)
          {
            goto LABEL_1344;
          }

          v682 = *(a1 + 8);
          if (v682)
          {
            v682 = *(v682 & 0xFFFFFFFFFFFFFFFELL);
          }

          v683 = MEMORY[0x277C97C00](v682);
          LODWORD(v599) = v683;
          *(a1 + 832) = v683;
          goto LABEL_1343;
        case 0xC4u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x800000u;
          v199 = (v6 + 1);
          v198 = *v6;
          if ((v198 & 0x8000000000000000) == 0)
          {
            goto LABEL_329;
          }

          v200 = *v199;
          v198 = (v200 << 7) + v198 - 128;
          if (v200 < 0)
          {
            v489 = google::protobuf::internal::VarintParseSlow64(v6, v198);
            v844 = v489;
            *(a1 + 1097) = v490 != 0;
            if (!v489)
            {
              return 0;
            }
          }

          else
          {
            v199 = (v6 + 2);
LABEL_329:
            v844 = v199;
            *(a1 + 1097) = v198 != 0;
          }

          goto LABEL_1434;
        case 0xC5u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 4u;
          v599 = *(a1 + 840);
          if (v599)
          {
            goto LABEL_1344;
          }

          v774 = *(a1 + 8);
          if (v774)
          {
            v774 = *(v774 & 0xFFFFFFFFFFFFFFFELL);
          }

          v775 = MEMORY[0x277C97C00](v774);
          LODWORD(v599) = v775;
          *(a1 + 840) = v775;
          goto LABEL_1343;
        case 0xC6u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x1000000u;
          v244 = (v6 + 1);
          v243 = *v6;
          if ((v243 & 0x8000000000000000) == 0)
          {
            goto LABEL_404;
          }

          v245 = *v244;
          v243 = (v245 << 7) + v243 - 128;
          if (v245 < 0)
          {
            v519 = google::protobuf::internal::VarintParseSlow64(v6, v243);
            v844 = v519;
            *(a1 + 1098) = v520 != 0;
            if (!v519)
            {
              return 0;
            }
          }

          else
          {
            v244 = (v6 + 2);
LABEL_404:
            v844 = v244;
            *(a1 + 1098) = v243 != 0;
          }

          goto LABEL_1434;
        case 0xC7u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 8u;
          v602 = *(a1 + 848);
          if (v602)
          {
            goto LABEL_1408;
          }

          v664 = *(a1 + 8);
          if (v664)
          {
            v664 = *(v664 & 0xFFFFFFFFFFFFFFFELL);
          }

          v665 = MEMORY[0x277C97BF0](v664);
          LODWORD(v602) = v665;
          *(a1 + 848) = v665;
LABEL_1407:
          v6 = v844;
LABEL_1408:
          v800 = sub_2764A9938(a3, v602, v6);
          goto LABEL_1433;
        case 0xC8u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x2000000u;
          v223 = (v6 + 1);
          v222 = *v6;
          if ((v222 & 0x8000000000000000) == 0)
          {
            goto LABEL_369;
          }

          v224 = *v223;
          v222 = (v224 << 7) + v222 - 128;
          if (v224 < 0)
          {
            v505 = google::protobuf::internal::VarintParseSlow64(v6, v222);
            v844 = v505;
            *(a1 + 1099) = v506 != 0;
            if (!v505)
            {
              return 0;
            }
          }

          else
          {
            v223 = (v6 + 2);
LABEL_369:
            v844 = v223;
            *(a1 + 1099) = v222 != 0;
          }

          goto LABEL_1434;
        case 0xC9u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x10u;
          v599 = *(a1 + 856);
          if (v599)
          {
            goto LABEL_1344;
          }

          v666 = *(a1 + 8);
          if (v666)
          {
            v666 = *(v666 & 0xFFFFFFFFFFFFFFFELL);
          }

          v667 = MEMORY[0x277C97C00](v666);
          LODWORD(v599) = v667;
          *(a1 + 856) = v667;
LABEL_1343:
          v6 = v844;
LABEL_1344:
          v800 = sub_2764A9868(a3, v599, v6);
          goto LABEL_1433;
        case 0xCAu:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x4000000u;
          v163 = (v6 + 1);
          v162 = *v6;
          if ((v162 & 0x8000000000000000) == 0)
          {
            goto LABEL_269;
          }

          v164 = *v163;
          v162 = (v164 << 7) + v162 - 128;
          if (v164 < 0)
          {
            v465 = google::protobuf::internal::VarintParseSlow64(v6, v162);
            v844 = v465;
            *(a1 + 1100) = v466 != 0;
            if (!v465)
            {
              return 0;
            }
          }

          else
          {
            v163 = (v6 + 2);
LABEL_269:
            v844 = v163;
            *(a1 + 1100) = v162 != 0;
          }

          goto LABEL_1434;
        case 0xCBu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x20u;
          v628 = *(a1 + 864);
          if (v628)
          {
            goto LABEL_1391;
          }

          v668 = *(a1 + 8);
          if (v668)
          {
            v668 = *(v668 & 0xFFFFFFFFFFFFFFFELL);
          }

          v669 = MEMORY[0x277C97C40](v668);
          LODWORD(v628) = v669;
          *(a1 + 864) = v669;
          goto LABEL_1390;
        case 0xCCu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x8000000u;
          v250 = (v6 + 1);
          v249 = *v6;
          if ((v249 & 0x8000000000000000) == 0)
          {
            goto LABEL_414;
          }

          v251 = *v250;
          v249 = (v251 << 7) + v249 - 128;
          if (v251 < 0)
          {
            v523 = google::protobuf::internal::VarintParseSlow64(v6, v249);
            v844 = v523;
            *(a1 + 1101) = v524 != 0;
            if (!v523)
            {
              return 0;
            }
          }

          else
          {
            v250 = (v6 + 2);
LABEL_414:
            v844 = v250;
            *(a1 + 1101) = v249 != 0;
          }

          goto LABEL_1434;
        case 0xCDu:
          if (v7 != 106)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x40u;
          v611 = *(a1 + 872);
          if (v611)
          {
            goto LABEL_1425;
          }

          v740 = *(a1 + 8);
          if (v740)
          {
            v740 = *(v740 & 0xFFFFFFFFFFFFFFFELL);
          }

          v741 = MEMORY[0x277C97C60](v740);
          LODWORD(v611) = v741;
          *(a1 + 872) = v741;
          goto LABEL_1424;
        case 0xCEu:
          if (v7 != 112)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x10000000u;
          v139 = (v6 + 1);
          v138 = *v6;
          if ((v138 & 0x8000000000000000) == 0)
          {
            goto LABEL_229;
          }

          v140 = *v139;
          v138 = (v140 << 7) + v138 - 128;
          if (v140 < 0)
          {
            v449 = google::protobuf::internal::VarintParseSlow64(v6, v138);
            v844 = v449;
            *(a1 + 1102) = v450 != 0;
            if (!v449)
            {
              return 0;
            }
          }

          else
          {
            v139 = (v6 + 2);
LABEL_229:
            v844 = v139;
            *(a1 + 1102) = v138 != 0;
          }

          goto LABEL_1434;
        case 0xCFu:
          if (v7 != 122)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x80u;
          v628 = *(a1 + 880);
          if (v628)
          {
            goto LABEL_1391;
          }

          v688 = *(a1 + 8);
          if (v688)
          {
            v688 = *(v688 & 0xFFFFFFFFFFFFFFFELL);
          }

          v689 = MEMORY[0x277C97C40](v688);
          LODWORD(v628) = v689;
          *(a1 + 880) = v689;
LABEL_1390:
          v6 = v844;
LABEL_1391:
          v800 = sub_2764A9528(a3, v628, v6);
          goto LABEL_1433;
        case 0xD0u:
          if (v7 != 128)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x20000000u;
          v241 = (v6 + 1);
          v240 = *v6;
          if ((v240 & 0x8000000000000000) == 0)
          {
            goto LABEL_399;
          }

          v242 = *v241;
          v240 = (v242 << 7) + v240 - 128;
          if (v242 < 0)
          {
            v517 = google::protobuf::internal::VarintParseSlow64(v6, v240);
            v844 = v517;
            *(a1 + 1103) = v518 != 0;
            if (!v517)
            {
              return 0;
            }
          }

          else
          {
            v241 = (v6 + 2);
LABEL_399:
            v844 = v241;
            *(a1 + 1103) = v240 != 0;
          }

          goto LABEL_1434;
        case 0xD1u:
          if (v7 != 138)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x100u;
          v611 = *(a1 + 888);
          if (v611)
          {
            goto LABEL_1425;
          }

          v744 = *(a1 + 8);
          if (v744)
          {
            v744 = *(v744 & 0xFFFFFFFFFFFFFFFELL);
          }

          v745 = MEMORY[0x277C97C60](v744);
          LODWORD(v611) = v745;
          *(a1 + 888) = v745;
          goto LABEL_1424;
        case 0xD2u:
          if (v7 != 144)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x40000000u;
          v232 = (v6 + 1);
          v231 = *v6;
          if ((v231 & 0x8000000000000000) == 0)
          {
            goto LABEL_384;
          }

          v233 = *v232;
          v231 = (v233 << 7) + v231 - 128;
          if (v233 < 0)
          {
            v511 = google::protobuf::internal::VarintParseSlow64(v6, v231);
            v844 = v511;
            *(a1 + 1104) = v512 != 0;
            if (!v511)
            {
              return 0;
            }
          }

          else
          {
            v232 = (v6 + 2);
LABEL_384:
            v844 = v232;
            *(a1 + 1104) = v231 != 0;
          }

          goto LABEL_1434;
        case 0xD3u:
          if (v7 != 154)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x200u;
          v611 = *(a1 + 896);
          if (v611)
          {
            goto LABEL_1425;
          }

          v754 = *(a1 + 8);
          if (v754)
          {
            v754 = *(v754 & 0xFFFFFFFFFFFFFFFELL);
          }

          v755 = MEMORY[0x277C97C60](v754);
          LODWORD(v611) = v755;
          *(a1 + 896) = v755;
          goto LABEL_1424;
        case 0xD4u:
          if (v7 != 160)
          {
            goto LABEL_1443;
          }

          *(a1 + 40) |= 0x80000000;
          v160 = (v6 + 1);
          v159 = *v6;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = *v160;
          v159 = (v161 << 7) + v159 - 128;
          if (v161 < 0)
          {
            v463 = google::protobuf::internal::VarintParseSlow64(v6, v159);
            v844 = v463;
            *(a1 + 1105) = v464 != 0;
            if (!v463)
            {
              return 0;
            }
          }

          else
          {
            v160 = (v6 + 2);
LABEL_264:
            v844 = v160;
            *(a1 + 1105) = v159 != 0;
          }

          goto LABEL_1434;
        case 0xD5u:
          if (v7 != 170)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x400u;
          v611 = *(a1 + 904);
          if (v611)
          {
            goto LABEL_1425;
          }

          v702 = *(a1 + 8);
          if (v702)
          {
            v702 = *(v702 & 0xFFFFFFFFFFFFFFFELL);
          }

          v703 = MEMORY[0x277C97C60](v702);
          LODWORD(v611) = v703;
          *(a1 + 904) = v703;
          goto LABEL_1424;
        case 0xD6u:
          if (v7 != 176)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 1u;
          v151 = (v6 + 1);
          v150 = *v6;
          if ((v150 & 0x8000000000000000) == 0)
          {
            goto LABEL_249;
          }

          v152 = *v151;
          v150 = (v152 << 7) + v150 - 128;
          if (v152 < 0)
          {
            v457 = google::protobuf::internal::VarintParseSlow64(v6, v150);
            v844 = v457;
            *(a1 + 1106) = v458 != 0;
            if (!v457)
            {
              return 0;
            }
          }

          else
          {
            v151 = (v6 + 2);
LABEL_249:
            v844 = v151;
            *(a1 + 1106) = v150 != 0;
          }

          goto LABEL_1434;
        case 0xD7u:
          if (v7 != 186)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x800u;
          v611 = *(a1 + 912);
          if (v611)
          {
            goto LABEL_1425;
          }

          v762 = *(a1 + 8);
          if (v762)
          {
            v762 = *(v762 & 0xFFFFFFFFFFFFFFFELL);
          }

          v763 = MEMORY[0x277C97C60](v762);
          LODWORD(v611) = v763;
          *(a1 + 912) = v763;
          goto LABEL_1424;
        case 0xD8u:
          if (v7 != 192)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 2u;
          v235 = (v6 + 1);
          v234 = *v6;
          if ((v234 & 0x8000000000000000) == 0)
          {
            goto LABEL_389;
          }

          v236 = *v235;
          v234 = (v236 << 7) + v234 - 128;
          if (v236 < 0)
          {
            v513 = google::protobuf::internal::VarintParseSlow64(v6, v234);
            v844 = v513;
            *(a1 + 1107) = v514 != 0;
            if (!v513)
            {
              return 0;
            }
          }

          else
          {
            v235 = (v6 + 2);
LABEL_389:
            v844 = v235;
            *(a1 + 1107) = v234 != 0;
          }

          goto LABEL_1434;
        case 0xD9u:
          if (v7 != 202)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x1000u;
          v611 = *(a1 + 920);
          if (v611)
          {
            goto LABEL_1425;
          }

          v720 = *(a1 + 8);
          if (v720)
          {
            v720 = *(v720 & 0xFFFFFFFFFFFFFFFELL);
          }

          v721 = MEMORY[0x277C97C60](v720);
          LODWORD(v611) = v721;
          *(a1 + 920) = v721;
          goto LABEL_1424;
        case 0xDAu:
          if (v7 != 208)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 4u;
          v205 = (v6 + 1);
          v204 = *v6;
          if ((v204 & 0x8000000000000000) == 0)
          {
            goto LABEL_339;
          }

          v206 = *v205;
          v204 = (v206 << 7) + v204 - 128;
          if (v206 < 0)
          {
            v493 = google::protobuf::internal::VarintParseSlow64(v6, v204);
            v844 = v493;
            *(a1 + 1108) = v494 != 0;
            if (!v493)
            {
              return 0;
            }
          }

          else
          {
            v205 = (v6 + 2);
LABEL_339:
            v844 = v205;
            *(a1 + 1108) = v204 != 0;
          }

          goto LABEL_1434;
        case 0xDBu:
          if (v7 != 218)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x2000u;
          v611 = *(a1 + 928);
          if (v611)
          {
            goto LABEL_1425;
          }

          v726 = *(a1 + 8);
          if (v726)
          {
            v726 = *(v726 & 0xFFFFFFFFFFFFFFFELL);
          }

          v727 = MEMORY[0x277C97C60](v726);
          LODWORD(v611) = v727;
          *(a1 + 928) = v727;
          goto LABEL_1424;
        case 0xDCu:
          if (v7 != 224)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 8u;
          v214 = (v6 + 1);
          v213 = *v6;
          if ((v213 & 0x8000000000000000) == 0)
          {
            goto LABEL_354;
          }

          v215 = *v214;
          v213 = (v215 << 7) + v213 - 128;
          if (v215 < 0)
          {
            v499 = google::protobuf::internal::VarintParseSlow64(v6, v213);
            v844 = v499;
            *(a1 + 1109) = v500 != 0;
            if (!v499)
            {
              return 0;
            }
          }

          else
          {
            v214 = (v6 + 2);
LABEL_354:
            v844 = v214;
            *(a1 + 1109) = v213 != 0;
          }

          goto LABEL_1434;
        case 0xDDu:
          if (v7 != 234)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x4000u;
          v611 = *(a1 + 936);
          if (v611)
          {
            goto LABEL_1425;
          }

          v738 = *(a1 + 8);
          if (v738)
          {
            v738 = *(v738 & 0xFFFFFFFFFFFFFFFELL);
          }

          v739 = MEMORY[0x277C97C60](v738);
          LODWORD(v611) = v739;
          *(a1 + 936) = v739;
          goto LABEL_1424;
        case 0xDEu:
          if (v7 != 240)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x10u;
          v196 = (v6 + 1);
          v195 = *v6;
          if ((v195 & 0x8000000000000000) == 0)
          {
            goto LABEL_324;
          }

          v197 = *v196;
          v195 = (v197 << 7) + v195 - 128;
          if (v197 < 0)
          {
            v487 = google::protobuf::internal::VarintParseSlow64(v6, v195);
            v844 = v487;
            *(a1 + 1110) = v488 != 0;
            if (!v487)
            {
              return 0;
            }
          }

          else
          {
            v196 = (v6 + 2);
LABEL_324:
            v844 = v196;
            *(a1 + 1110) = v195 != 0;
          }

          goto LABEL_1434;
        case 0xDFu:
          if (v7 != 250)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x8000u;
          v611 = *(a1 + 944);
          if (v611)
          {
            goto LABEL_1425;
          }

          v734 = *(a1 + 8);
          if (v734)
          {
            v734 = *(v734 & 0xFFFFFFFFFFFFFFFELL);
          }

          v735 = MEMORY[0x277C97C60](v734);
          LODWORD(v611) = v735;
          *(a1 + 944) = v735;
          goto LABEL_1424;
        case 0xE0u:
          if (v7)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x20u;
          v211 = (v6 + 1);
          v210 = *v6;
          if ((v210 & 0x8000000000000000) == 0)
          {
            goto LABEL_349;
          }

          v212 = *v211;
          v210 = (v212 << 7) + v210 - 128;
          if (v212 < 0)
          {
            v497 = google::protobuf::internal::VarintParseSlow64(v6, v210);
            v844 = v497;
            *(a1 + 1111) = v498 != 0;
            if (!v497)
            {
              return 0;
            }
          }

          else
          {
            v211 = (v6 + 2);
LABEL_349:
            v844 = v211;
            *(a1 + 1111) = v210 != 0;
          }

          goto LABEL_1434;
        case 0xE1u:
          if (v7 != 10)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x10000u;
          v611 = *(a1 + 952);
          if (v611)
          {
            goto LABEL_1425;
          }

          v700 = *(a1 + 8);
          if (v700)
          {
            v700 = *(v700 & 0xFFFFFFFFFFFFFFFELL);
          }

          v701 = MEMORY[0x277C97C60](v700);
          LODWORD(v611) = v701;
          *(a1 + 952) = v701;
          goto LABEL_1424;
        case 0xE2u:
          if (v7 != 16)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x40u;
          v187 = (v6 + 1);
          v186 = *v6;
          if ((v186 & 0x8000000000000000) == 0)
          {
            goto LABEL_309;
          }

          v188 = *v187;
          v186 = (v188 << 7) + v186 - 128;
          if (v188 < 0)
          {
            v481 = google::protobuf::internal::VarintParseSlow64(v6, v186);
            v844 = v481;
            *(a1 + 1112) = v482 != 0;
            if (!v481)
            {
              return 0;
            }
          }

          else
          {
            v187 = (v6 + 2);
LABEL_309:
            v844 = v187;
            *(a1 + 1112) = v186 != 0;
          }

          goto LABEL_1434;
        case 0xE3u:
          if (v7 != 26)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x20000u;
          v611 = *(a1 + 960);
          if (v611)
          {
            goto LABEL_1425;
          }

          v718 = *(a1 + 8);
          if (v718)
          {
            v718 = *(v718 & 0xFFFFFFFFFFFFFFFELL);
          }

          v719 = MEMORY[0x277C97C60](v718);
          LODWORD(v611) = v719;
          *(a1 + 960) = v719;
          goto LABEL_1424;
        case 0xE4u:
          if (v7 != 32)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x80u;
          v184 = (v6 + 1);
          v183 = *v6;
          if ((v183 & 0x8000000000000000) == 0)
          {
            goto LABEL_304;
          }

          v185 = *v184;
          v183 = (v185 << 7) + v183 - 128;
          if (v185 < 0)
          {
            v479 = google::protobuf::internal::VarintParseSlow64(v6, v183);
            v844 = v479;
            *(a1 + 1113) = v480 != 0;
            if (!v479)
            {
              return 0;
            }
          }

          else
          {
            v184 = (v6 + 2);
LABEL_304:
            v844 = v184;
            *(a1 + 1113) = v183 != 0;
          }

          goto LABEL_1434;
        case 0xE5u:
          if (v7 != 42)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x40000u;
          v611 = *(a1 + 968);
          if (v611)
          {
            goto LABEL_1425;
          }

          v732 = *(a1 + 8);
          if (v732)
          {
            v732 = *(v732 & 0xFFFFFFFFFFFFFFFELL);
          }

          v733 = MEMORY[0x277C97C60](v732);
          LODWORD(v611) = v733;
          *(a1 + 968) = v733;
          goto LABEL_1424;
        case 0xE6u:
          if (v7 != 48)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x100u;
          v190 = (v6 + 1);
          v189 = *v6;
          if ((v189 & 0x8000000000000000) == 0)
          {
            goto LABEL_314;
          }

          v191 = *v190;
          v189 = (v191 << 7) + v189 - 128;
          if (v191 < 0)
          {
            v483 = google::protobuf::internal::VarintParseSlow64(v6, v189);
            v844 = v483;
            *(a1 + 1114) = v484 != 0;
            if (!v483)
            {
              return 0;
            }
          }

          else
          {
            v190 = (v6 + 2);
LABEL_314:
            v844 = v190;
            *(a1 + 1114) = v189 != 0;
          }

          goto LABEL_1434;
        case 0xE7u:
          if (v7 != 58)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x80000u;
          v611 = *(a1 + 976);
          if (v611)
          {
            goto LABEL_1425;
          }

          v724 = *(a1 + 8);
          if (v724)
          {
            v724 = *(v724 & 0xFFFFFFFFFFFFFFFELL);
          }

          v725 = MEMORY[0x277C97C60](v724);
          LODWORD(v611) = v725;
          *(a1 + 976) = v725;
          goto LABEL_1424;
        case 0xE8u:
          if (v7 != 64)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x200u;
          v172 = (v6 + 1);
          v171 = *v6;
          if ((v171 & 0x8000000000000000) == 0)
          {
            goto LABEL_284;
          }

          v173 = *v172;
          v171 = (v173 << 7) + v171 - 128;
          if (v173 < 0)
          {
            v471 = google::protobuf::internal::VarintParseSlow64(v6, v171);
            v844 = v471;
            *(a1 + 1115) = v472 != 0;
            if (!v471)
            {
              return 0;
            }
          }

          else
          {
            v172 = (v6 + 2);
LABEL_284:
            v844 = v172;
            *(a1 + 1115) = v171 != 0;
          }

          goto LABEL_1434;
        case 0xE9u:
          if (v7 != 74)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x100000u;
          v611 = *(a1 + 984);
          if (v611)
          {
            goto LABEL_1425;
          }

          v712 = *(a1 + 8);
          if (v712)
          {
            v712 = *(v712 & 0xFFFFFFFFFFFFFFFELL);
          }

          v713 = MEMORY[0x277C97C60](v712);
          LODWORD(v611) = v713;
          *(a1 + 984) = v713;
          goto LABEL_1424;
        case 0xEAu:
          if (v7 != 80)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x400u;
          v175 = (v6 + 1);
          v174 = *v6;
          if ((v174 & 0x8000000000000000) == 0)
          {
            goto LABEL_289;
          }

          v176 = *v175;
          v174 = (v176 << 7) + v174 - 128;
          if (v176 < 0)
          {
            v473 = google::protobuf::internal::VarintParseSlow64(v6, v174);
            v844 = v473;
            *(a1 + 1116) = v474 != 0;
            if (!v473)
            {
              return 0;
            }
          }

          else
          {
            v175 = (v6 + 2);
LABEL_289:
            v844 = v175;
            *(a1 + 1116) = v174 != 0;
          }

          goto LABEL_1434;
        case 0xEBu:
          if (v7 != 90)
          {
            goto LABEL_1443;
          }

          *(a1 + 28) |= 0x200000u;
          v611 = *(a1 + 992);
          if (v611)
          {
            goto LABEL_1425;
          }

          v714 = *(a1 + 8);
          if (v714)
          {
            v714 = *(v714 & 0xFFFFFFFFFFFFFFFELL);
          }

          v715 = MEMORY[0x277C97C60](v714);
          LODWORD(v611) = v715;
          *(a1 + 992) = v715;
LABEL_1424:
          v6 = v844;
LABEL_1425:
          v800 = sub_2764A9458(a3, v611, v6);
LABEL_1433:
          v844 = v800;
          if (v800)
          {
            goto LABEL_1434;
          }

          return 0;
        case 0xECu:
          if (v7 != 96)
          {
            goto LABEL_1443;
          }

          *(a1 + 44) |= 0x800u;
          v178 = (v6 + 1);
          v177 = *v6;
          if ((v177 & 0x8000000000000000) == 0)
          {
            goto LABEL_294;
          }

          v179 = *v178;
          v177 = (v179 << 7) + v177 - 128;
          if (v179 < 0)
          {
            v475 = google::protobuf::internal::VarintParseSlow64(v6, v177);
            v844 = v475;
            *(a1 + 1117) = v476 != 0;
            if (!v475)
            {
              return 0;
            }
          }

          else
          {
            v178 = (v6 + 2);
LABEL_294:
            v844 = v178;
            *(a1 + 1117) = v177 != 0;
          }

          goto LABEL_1434;
        default:
LABEL_1443:
          v843 = sub_2764A9FEC(v7, a3, (a1 + 8), &v844);
          if (!v843)
          {
            return v844;
          }

          if (v843 == 1)
          {
            return 0;
          }

          goto LABEL_1434;
      }
    }
  }

  return v844;
}