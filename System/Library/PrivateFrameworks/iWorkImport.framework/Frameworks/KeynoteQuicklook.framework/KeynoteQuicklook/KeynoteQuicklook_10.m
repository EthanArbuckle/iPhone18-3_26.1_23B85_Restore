uint64_t *sub_275E4E94C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E3F1B0(result);

    return sub_275E4BEDC(v4, a2);
  }

  return result;
}

uint64_t sub_275E4E998(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 72));
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
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 208));
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
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(a1 + 280));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSSSOS::SpecColorArchive::IsInitialized(*(a1 + 288));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 296)), result))
  {
    v4 = *(a1 + 20);
    if (v4)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 2) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 4) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 8) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 344));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x100) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 376));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x400) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 384));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x800) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 400));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x4000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 416));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x8000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 424));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 432));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 440));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 448));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 456));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x100000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 464));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x200000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x400000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x800000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 488));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 496));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 504));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x4000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 512));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x8000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 520));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 528));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 536));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40000000) != 0)
    {
      result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 544));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80000000) == 0 || (result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 552)), result))
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 560));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 2) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 568));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 4) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 576));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 8) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 584));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x10) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 592));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x20) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 600));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x40) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 608));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x80) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 616));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x100) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 624));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x200) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 632));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x400) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 640));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x800) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 648));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x1000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 656));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x2000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 664));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x4000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 672));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x8000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 680));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x10000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 688));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x20000) != 0)
      {
        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 696));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x40000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 704));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x80000) != 0)
      {
        result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 712));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x100000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 720));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x200000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 728));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x400000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 736));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x800000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 744));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x1000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 752));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x2000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 760));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x4000000) != 0)
      {
        result = TSSSOS::SpecColorArchive::IsInitialized(*(a1 + 768));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x8000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 776));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x10000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 784));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x20000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 792));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x40000000) != 0)
      {
        result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 800));
        if (!result)
        {
          return result;
        }

        v5 = *(a1 + 24);
      }

      if ((v5 & 0x80000000) == 0 || (result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 808)), result))
      {
        v6 = *(a1 + 28);
        if (v6)
        {
          result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 816));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 2) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 824));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 4) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 832));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 8) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 840));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x10) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 848));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x20) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 856));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x40) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 864));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x80) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 872));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x100) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 880));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x200) != 0)
        {
          result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 888));
          if (!result)
          {
            return result;
          }

          v6 = *(a1 + 28);
        }

        if ((v6 & 0x400) == 0)
        {
          return 1;
        }

        result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 896));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_275E4F250(uint64_t *a1)
{
  if (a1 != &qword_2812EC5F0)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C8EDB0]();
      MEMORY[0x277C8F960](v2, 0x10A1C404E50D5EBLL);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275E3E294(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40D4912B22);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E4F2D4(uint64_t *a1)
{
  sub_275E4F250(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E4F314(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSDSOS::SpecFillArchive::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = sub_275E3E338(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 16) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E4F388(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v22 = *(a1 + 32);
            if (!v22)
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = sub_275E4FCA8(v23);
              *(a1 + 32) = v22;
              v7 = v31;
            }

            v21 = sub_275E60EF4(a3, v22, v7);
            goto LABEL_44;
          }

LABEL_37:
          if (v8)
          {
            v24 = (v8 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v21 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
          v31 = v21;
          if (!v21)
          {
            goto LABEL_54;
          }

          goto LABEL_45;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_37;
        }

        v5 |= 8u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_24:
          v31 = v16;
          *(a1 + 41) = v15 != 0;
          goto LABEL_45;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v31 = v27;
        *(a1 + 41) = v28 != 0;
        if (!v27)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v18 = *(a1 + 24);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277C8F100](v19);
              LODWORD(v18) = v20;
              *(a1 + 24) = v20;
              v7 = v31;
            }

            v21 = sub_275E60AE4(a3, v18, v7);
            goto LABEL_44;
          }

          goto LABEL_37;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_17:
          v31 = v13;
          *(a1 + 40) = v12 != 0;
          goto LABEL_45;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v31 = v29;
        *(a1 + 40) = v30 != 0;
        if (!v29)
        {
LABEL_54:
          v31 = 0;
          goto LABEL_2;
        }
      }

LABEL_45:
      if (sub_275E221E8(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

unsigned __int8 *sub_275E4F648(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 40);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
  *a2 = 26;
  v14 = *(v13 + 20);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = sub_275E3E4DC(v13, v15, a3);
  if ((v5 & 8) != 0)
  {
LABEL_29:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(a1 + 41);
    *a2 = 32;
    a2[1] = v19;
    a2 += 2;
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E4F850(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSDSOS::SpecFillArchive::ByteSizeLong(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_275E3E5CC(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = v3 + ((v2 >> 2) & 2) + ((v2 >> 1) & 2);
LABEL_9:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275E4F944(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D88E0, 0);
  if (v4)
  {

    return sub_275E4F9EC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E4F9EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F100](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80530];
      }

      result = TSDSOS::SpecFillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E4FCA8(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812EC1D8;
    }

    result = sub_275E3E700(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 41) = *(a2 + 41);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_275E4FB08(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E4F314(result);

    return sub_275E4F944(v4, a2);
  }

  return result;
}

uint64_t sub_275E4FB54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_275E3E7F4(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E4FBDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E4FF7C(a1);
}

void *sub_275E4FCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E50080(a1, a2, a3);
}

uint64_t sub_275E4FD78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E50180(a1);
}

uint64_t sub_275E4FE50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E5028C(a1);
}

uint64_t sub_275E4FF7C(uint64_t a1)
{
  v2 = sub_275E4FFF4(a1, 1);
  *v2 = &unk_2884D85E8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA998, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E4FFF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E61058(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E5007C);
}

void *sub_275E50080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_275E500F4(a1, 1, a3);
  *v4 = &unk_2884D8698;
  v4[1] = a1;
  v4[2] = 0;
  if (atomic_load_explicit(dword_2812EA9B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v4[3] = 0;
  return v4;
}

uint64_t sub_275E500F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    sub_275E61090(a1, a2, a3);
    if (v3)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E5017C);
}

uint64_t sub_275E50180(uint64_t a1)
{
  v2 = sub_275E50200(a1, 1);
  *v2 = &unk_2884D8748;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  if (atomic_load_explicit(dword_2812EA928, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero((v2 + 48), 0x3C3uLL);
  return v2;
}

uint64_t sub_275E50200(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E610BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 1016, sub_275E50288);
}

uint64_t sub_275E5028C(uint64_t a1)
{
  v2 = sub_275E50304(a1, 1);
  *v2 = &unk_2884D87F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA970, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_275E50304(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E610F4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E5038C);
}

void sub_275E517EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = v3;
  if (v3)
  {
    objc_msgSend_setDrawable_(*(a1 + 32), v3, v3);
    v5 = *(a1 + 32);
    if (!*(v5 + 104))
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuild(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 52, 0, "Something is wrong with the setDrawable: method.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
      v5 = *(a1 + 32);
    }

    if (!*(v5 + 64))
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuild(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 53, 0, "Something is wrong with the setDrawable: method.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }
  }

  else if (KNBuildArchivingLogCat_init_token != -1)
  {
    sub_275E61140();
  }
}

void sub_275E519C0()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275E51A04()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildArchivingLogCat_log_t;
  KNBuildArchivingLogCat_log_t = v0;
}

void sub_275E51D74()
{
  v0 = TSULogCreateCategory();
  v1 = KNBuildCobblestoneLogCat_log_t;
  KNBuildCobblestoneLogCat_log_t = v0;
}

void sub_275E51DB8(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275D55C50();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275E51EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275E51ECC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_attributes(*(a1 + 32), a2, a3);
  v6 = *(a1 + 48);
  *(v6 + 16) |= 4u;
  v7 = *(v6 + 40);
  v9 = v4;
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E1FA84(v8);
    *(v6 + 40) = v7;
    v4 = v9;
  }

  objc_msgSend_encodeToArchive_archiver_(v4, v5, v7, *(a1 + 40));
}

uint64_t sub_275E521FC(void *a1, void *a2)
{
  v3 = a2;
  ChunkIndexOnSlide = objc_msgSend_firstChunkIndexOnSlide(a1, v4, v5);
  v9 = objc_msgSend_firstChunkIndexOnSlide(v3, v7, v8);

  if (ChunkIndexOnSlide < v9)
  {
    return -1;
  }

  else
  {
    return ChunkIndexOnSlide > v9;
  }
}

uint64_t sub_275E526D4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_build(a2, a2, a3);
  v6 = objc_msgSend_containsObject_(v3, v5, v4);

  return v6;
}

id sub_275E535D0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();

  v6 = objc_msgSend_chunkIdentifier(v3, v4, v5);

  return v6;
}

id sub_275E53AFC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_context(a1, a2, a3);
  v6 = objc_msgSend_documentObject(v3, v4, v5);

  objc_opt_class();
  v7 = TSUDynamicCast();

  return v7;
}

uint64_t sub_275E54F70(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_objectUUID(a2, v5, v6);
  v10 = objc_msgSend_objectUUID(v4, v8, v9);
  v12 = objc_msgSend_tsu_compare_(v7, v11, v10);

  return v12;
}

void sub_275E54FE0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__n128 sub_275E55740(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275E55750(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275E55770(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_275E557D4()
{
  swift_getWitnessTable();

  return sub_275E61178();
}

uint64_t sub_275E55848(uint64_t a1, id *a2)
{
  result = sub_275E611C8();
  *a2 = 0;
  return result;
}

uint64_t sub_275E558C0(uint64_t a1, id *a2)
{
  v3 = sub_275E611D8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_275E55940@<X0>(uint64_t *a1@<X8>)
{
  sub_275E611E8();
  v2 = sub_275E611B8();

  *a1 = v2;
  return result;
}

uint64_t sub_275E55984()
{
  v0 = sub_275E611E8();
  v1 = MEMORY[0x277C8D710](v0);

  return v1;
}

uint64_t sub_275E559C0()
{
  sub_275E611E8();
  sub_275E611F8();
}

uint64_t sub_275E55A14()
{
  sub_275E611E8();
  sub_275E61308();
  sub_275E611F8();
  v0 = sub_275E61328();

  return v0;
}

uint64_t sub_275E55A88()
{
  v0 = sub_275E611E8();
  v2 = v1;
  if (v0 == sub_275E611E8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_275E612E8();
  }

  return v5 & 1;
}

uint64_t sub_275E55BB4()
{
  sub_275E61308();
  swift_getWitnessTable();
  sub_275E61188();
  return sub_275E61328();
}

uint64_t sub_275E55C1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_275E611B8();

  *a1 = v2;
  return result;
}

uint64_t sub_275E55C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275E611E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_275E55CCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_275E55D18(uint64_t a1)
{
  v2 = sub_275E55E64(&qword_280A3BE40, type metadata accessor for Key);
  v3 = sub_275E55E64(&qword_280A3BE48, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275E55E64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_275E55FAC(void **a1, void **a2)
{
  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  v6 = [objc_allocWithZone(MEMORY[0x277D81180]) initWithUIColor_];

  v7 = *a1;
  *a1 = v6;

  v8 = [v4 secondaryLabelColor];
  v9 = [objc_allocWithZone(MEMORY[0x277D81180]) initWithUIColor_];

  v10 = *a2;
  *a2 = v9;
}

uint64_t sub_275E560BC(uint64_t isEscapingClosureAtFileLocation)
{
  type metadata accessor for SymbolTintColorIdentifier(0);
  if ((isEscapingClosureAtFileLocation - 2) >= 4 && isEscapingClosureAtFileLocation)
  {
    if (isEscapingClosureAtFileLocation != 1)
    {
      goto LABEL_26;
    }

    v2 = [objc_allocWithZone(MEMORY[0x277D81180]) initWithWhite:0.0 alpha:0.35];
    goto LABEL_12;
  }

  v2 = [objc_opt_self() whiteColor];
  if (isEscapingClosureAtFileLocation > 2)
  {
    if (isEscapingClosureAtFileLocation == 3)
    {
      v24 = objc_allocWithZone(MEMORY[0x277D81180]);
      v4 = v2;
      v25 = [v24 initWithRed:0.968627451 green:0.847058824 blue:0.435294118 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x277D81180]);
      v7 = v25;
      v8 = 0.97254902;
      v9 = 0.8;
      v10 = 0.290196078;
    }

    else
    {
      v11 = objc_allocWithZone(MEMORY[0x277D81180]);
      v4 = v2;
      if (isEscapingClosureAtFileLocation == 4)
      {
        v12 = [v11 initWithRed:0.62745098 green:0.88627451 blue:0.631372549 alpha:1.0];
        v6 = objc_allocWithZone(MEMORY[0x277D81180]);
        v7 = v12;
        v8 = 0.505882353;
        v9 = 0.854901961;
        v10 = 0.494117647;
      }

      else
      {
        v26 = [v11 initWithRed:0.192156863 green:0.670588235 blue:0.898039216 alpha:1.0];
        v6 = objc_allocWithZone(MEMORY[0x277D81180]);
        v7 = v26;
        v8 = 0.0980392157;
        v9 = 0.529411765;
        v10 = 1.0;
      }
    }

    goto LABEL_16;
  }

  if (isEscapingClosureAtFileLocation)
  {
    if (isEscapingClosureAtFileLocation != 1)
    {
      v3 = objc_allocWithZone(MEMORY[0x277D81180]);
      v4 = v2;
      v5 = [v3 initWithRed:0.964705882 green:0.549019608 blue:0.509803922 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x277D81180]);
      v7 = v5;
      v8 = 0.917647059;
      v9 = 0.356862745;
      v10 = 0.301960784;
LABEL_16:
      v16 = [v6 initWithRed:v8 green:v9 blue:v10 alpha:1.0];
      goto LABEL_17;
    }

LABEL_12:
    v13 = objc_allocWithZone(MEMORY[0x277D81180]);
    v4 = v2;
    v14 = [v13 initWithRed:0.960784314 green:0.960784314 blue:0.980392157 alpha:1.0];
    v15 = objc_allocWithZone(MEMORY[0x277D81180]);
    v7 = v14;
    v16 = [v15 initWithRed:0.815686275 green:0.815686275 blue:0.850980392 alpha:1.0];
LABEL_17:
    v23 = 0;
    v22 = v16;
    goto LABEL_18;
  }

  v17 = objc_allocWithZone(MEMORY[0x277D81180]);
  v4 = v2;
  v18 = [v17 initWithRed:0.133333333 green:0.133333333 blue:0.133333333 alpha:1.0];
  v19 = objc_allocWithZone(MEMORY[0x277D81180]);
  v7 = v18;
  v20 = [v19 initWithRed:0.0941176471 green:0.0941176471 blue:0.0941176471 alpha:1.0];
  v21 = objc_allocWithZone(MEMORY[0x277D81180]);
  v22 = v20;
  v16 = [v21 initWithWhite:1.0 alpha:0.05];
  v23 = v16;
LABEL_18:
  v27 = v16;
  v28 = objc_opt_self();
  v60 = [v28 grayColor];
  v59 = [v28 grayColor];
  v29 = objc_opt_self();
  if (isEscapingClosureAtFileLocation == 1)
  {
    v30 = [v29 traitCollectionWithUserInterfaceStyle_];
    v31 = swift_allocObject();
    *(v31 + 16) = &v60;
    *(v31 + 24) = &v59;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_275E568EC;
    *(v32 + 24) = v31;
    v57 = sub_275E568F0;
    v58 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_275E55F84;
    v56 = &unk_2884D8C08;
    v33 = _Block_copy(&aBlock);

    [v30 performAsCurrentTraitCollection_];

    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v34 = v23;
      v35 = v22;
      v36 = v7;
      v37 = v4;
      v38 = sub_275E568EC;
      v51 = 0;
LABEL_23:
      v42 = v59;
      v43 = v60;
      v44 = type metadata accessor for KNLiveVideoSourceSymbolTintColorSet();
      v45 = objc_allocWithZone(v44);
      v46 = &v45[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage];
      *v46 = v37;
      *(v46 + 1) = v36;
      *(v46 + 2) = v35;
      *(v46 + 3) = v34;
      *(v46 + 4) = v43;
      *(v46 + 5) = v42;
      v52.receiver = v45;
      v52.super_class = v44;
      v47 = v43;
      v48 = v42;
      v49 = objc_msgSendSuper2(&v52, sel_init);

      sub_275E568CC(v38);
      sub_275E568CC(v51);
      return v49;
    }

    __break(1u);
  }

  else
  {
    v39 = [v29 traitCollectionWithUserInterfaceStyle_];
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = &v60;
    *(isEscapingClosureAtFileLocation + 24) = &v59;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_275E56870;
    *(v40 + 24) = isEscapingClosureAtFileLocation;
    v57 = sub_275E5688C;
    v58 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_275E55F84;
    v56 = &unk_2884D8B90;
    v41 = _Block_copy(&aBlock);

    [v39 performAsCurrentTraitCollection_];

    _Block_release(v41);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      v51 = sub_275E56870;
      v34 = v23;
      v35 = v22;
      v36 = v7;
      v37 = v4;
      v38 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  aBlock = isEscapingClosureAtFileLocation;
  result = sub_275E612F8();
  __break(1u);
  return result;
}

uint64_t sub_275E568B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275E568CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_275E56A10()
{
  v1 = *(v0 + 24);
  sub_275E61308();
  sub_275E61278();
  sub_275E61278();
  sub_275E61278();
  sub_275E61318();
  if (v1)
  {
    v2 = v1;
    sub_275E61278();
  }

  sub_275E61278();
  sub_275E61278();
  return sub_275E61328();
}

uint64_t sub_275E56AD8()
{
  v1 = *(v0 + 24);
  sub_275E61278();
  sub_275E61278();
  sub_275E61278();
  sub_275E61318();
  if (v1)
  {
    v2 = v1;
    sub_275E61278();
  }

  sub_275E61278();
  return sub_275E61278();
}

uint64_t sub_275E56B88()
{
  v1 = *(v0 + 24);
  sub_275E61308();
  sub_275E61278();
  sub_275E61278();
  sub_275E61278();
  sub_275E61318();
  if (v1)
  {
    v2 = v1;
    sub_275E61278();
  }

  sub_275E61278();
  sub_275E61278();
  return sub_275E61328();
}

uint64_t sub_275E56C4C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_275E571A0(v7, v8) & 1;
}

uint64_t sub_275E56C94(uint64_t a1)
{
  swift_getObjectType();
  sub_275E57348(a1, &v17, &qword_280A3BE70);
  if (!*(&v18 + 1))
  {
    sub_275E573B0(&v17, &qword_280A3BE70);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v3 = *&v16[0];
  v4 = *(v1 + OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage + 16);
  v16[0] = *(v1 + OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage);
  v16[1] = v4;
  v16[2] = *(v1 + OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage + 32);
  v17 = *&v3[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage];
  v18 = *&v3[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage + 16];
  v19 = *&v3[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage + 32];
  v5 = *(&v17 + 1);
  v20 = *(&v18 + 1);
  v6 = v18;
  v7 = v19;
  v8 = v17;
  v9 = v5;
  v10 = v6;
  sub_275E57348(&v20, v15, &qword_280A3BE78);
  v11 = v7;
  v12 = *(&v7 + 1);
  v13 = sub_275E571A0(v16, &v17);

  sub_275E573B0(&v20, &qword_280A3BE78);
  return v13 & 1;
}

id sub_275E56FC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KNLiveVideoSourceSymbolTintColorSet();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_275E57090(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_275E570A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275E570EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_275E5714C()
{
  result = qword_280A3BE58;
  if (!qword_280A3BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A3BE58);
  }

  return result;
}

uint64_t sub_275E571A0(uint64_t a1, uint64_t a2)
{
  sub_275E572B8(0, &qword_280A3BE60);
  if ((sub_275E61268() & 1) == 0 || (sub_275E61268() & 1) == 0 || (sub_275E61268() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_275E572B8(0, &qword_280A3BE68);
    v6 = v5;
    v7 = v4;
    v8 = sub_275E61268();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_275E61268())
  {
    return sub_275E61268() & 1;
  }

  return 0;
}

uint64_t sub_275E572B8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_275E57300(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_275E57348(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_275E57300(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275E573B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_275E57300(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_275E57410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_drawsInvisibleText] = 0;
  *&v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont] = 0;
  v10 = &v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextFixedPointSize];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextBoundsSize];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextLine] = 0;
  *&v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextColor] = 0;
  v12 = &v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText];
  *v12 = a1;
  v12[1] = a2;
  *&v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_imageIdentifier] = a3;
  *&v4[OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_tintColorIdentifier] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_275E575F8(CGContext *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {
    sub_275E579C4(a1, a3, a4, a5, a6);
  }

  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  Width = CGRectGetWidth(v42);
  TSDDefaultResampledImageSize();
  if (v14 < Width || (v43.origin.x = a3, v43.origin.y = a4, v43.size.width = a5, v43.size.height = a6, Height = CGRectGetHeight(v43), TSDDefaultResampledImageSize(), v16 < Height))
  {
    TSDDefaultResampledImageSize();
    TSUShrinkSizeToFitInSize();
    TSUFlooredSize();
    TSURectWithSize();
    x = v17;
    y = v19;
    v22 = v21;
    v24 = v23;
    v25 = TSDBitmapContextCreate();
    if (v25)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v25 = a1;
  x = a3;
  y = a4;
  v22 = a5;
  v24 = a6;
LABEL_8:
  v26 = *(v6 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText + 8);
  v40 = v25;
  if (v26)
  {
    v27 = *(v6 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = v22;
    v44.size.height = v24;
    v45 = CGRectInset(v44, 3.0, 3.0);
    sub_275E57DEC(v27, v26, 0, 1, v40, v45.origin.x, v45.origin.y, v45.size.width, v45.size.height);
  }

  else
  {
    if (a2)
    {
      if (v24 >= v22)
      {
        v28 = v22;
      }

      else
      {
        v28 = v24;
      }

      v29 = v28 / 90.0 * 8.0;
      v46.origin.x = a3;
      v46.origin.y = a4;
      v46.size.width = a5;
      v46.size.height = a6;
      v47 = CGRectInset(v46, v29, v29);
      v25 = v40;
      x = v47.origin.x;
      y = v47.origin.y;
      v22 = v47.size.width;
      v24 = v47.size.height;
    }

    sub_275E582D0(0, 1, v25, x, y, v22, v24);
  }

  type metadata accessor for CGContext(0);
  sub_275E59C48(&qword_280A3BEF8, type metadata accessor for CGContext);
  v30 = sub_275E61178();

  if (v30)
  {
    v31 = v40;
  }

  else
  {
    Image = CGBitmapContextCreateImage(v40);
    if (Image)
    {
      v33 = Image;
      sub_275E61248();
      v34 = v40;
    }

    else
    {
      sub_275E612B8();
      v35 = swift_allocObject();
      v35[2] = 8;
      v35[3] = 0;
      v35[4] = 0;
      v35[5] = 0;
      v36 = sub_275E612A8();
      v37 = objc_opt_self();
      sub_275E61298();
      v38 = sub_275E611B8();

      sub_275E61298();
      v39 = sub_275E611B8();

      sub_275E61298();
      v33 = sub_275E611B8();

      [v37 handleFailureInFunction:v38 file:v39 lineNumber:121 isFatal:0 format:v33 args:v36];

      v34 = v39;
    }

    v31 = v33;
  }
}

void sub_275E579C4(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_275E61168();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20]();
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSaveGState(a1);
  v15 = [objc_opt_self() colorSetForSymbolTintColorIdentifier_];
  CGContextBeginPath(a1);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGContextAddRect(a1, v37);
  v16 = *MEMORY[0x277CBF258];
  v17 = *(v12 + 104);
  v17(v14, v16, v11);
  sub_275E61238();
  v33 = *(v12 + 8);
  v33(v14, v11);
  sub_275E57300(&qword_280A3BEC8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_275E7C470;
  v34 = v15;
  v19 = &v15[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage];
  *(v18 + 32) = [v19[1] CGColor];
  *(v18 + 40) = [v19[2] CGColor];
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v22 = CGRectGetMinX(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  MaxY = CGRectGetMaxY(v41);
  type metadata accessor for CGColor(0);
  v24 = sub_275E61218();

  v25 = CGGradientCreateWithColors(0, v24, dbl_2884D89B8);

  if (v25)
  {
    v26 = v25;
    v35.x = MinX;
    v35.y = MinY;
    v36.x = v22;
    v36.y = MaxY;
    CGContextDrawLinearGradient(a1, v26, v35, v36, 0);
    v17(v14, v16, v11);
    sub_275E61258();

    v33(v14, v11);
  }

  else
  {
    sub_275E612B8();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
    v28 = sub_275E612A8();
    v29 = objc_opt_self();
    sub_275E61298();
    v30 = sub_275E611B8();

    sub_275E61298();
    v31 = sub_275E611B8();

    sub_275E61298();
    v32 = sub_275E611B8();

    [v29 handleFailureInFunction:v30 file:v31 lineNumber:251 isFatal:0 format:v32 args:v28];
  }

  CGContextRestoreGState(a1);
}

void sub_275E57DEC(uint64_t a1, unint64_t a2, uint64_t a3, char a4, CGContextRef c, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  CGContextSaveGState(c);
  v19 = a6;
  v61 = a7;
  v20 = a8;
  v21 = a9;
  if (a4)
  {
    v63.origin.x = a6;
    v63.origin.y = a7;
    v63.size.width = a8;
    v63.size.height = a9;
    CGRectGetWidth(v63);
    v64.origin.x = a6;
    v64.origin.y = a7;
    v64.size.width = a8;
    v64.size.height = a9;
    CGRectGetHeight(v64);
    TSUCenterOfRect();
    TSURoundedPoint();
    TSURectWithCenterAndSize();
    v19 = v22;
    v61 = v23;
    v20 = v24;
    v21 = v25;
  }

  if (*(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_drawsInvisibleText))
  {
    v26 = [objc_opt_self() clearColor];
  }

  else
  {
    v28 = [objc_opt_self() colorSetForSymbolTintColorIdentifier_];
    v26 = *&v28[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage];
  }

  v29 = v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextFixedPointSize;
  v30 = &off_280A3B000;
  *&v60[16] = a8;
  *&v60[24] = a9;
  *v60 = a6;
  *&v60[8] = a7;
  if (*(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextFixedPointSize + 8))
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((a4 & 1) != 0 || (v27 = *v29, *v29 != *&a3))
  {
LABEL_20:
    v38 = v30;
    v39 = [v26 UIColor];
    if (a4)
    {
      v40 = sub_275E594D4(a1, a2, v39, v20, v21);
      v42 = v41;
    }

    else
    {
      v43 = sub_275E58F20(*&a3);
      v44 = a1;
      v42 = v43;
      v40 = sub_275E592F4(v44, a2, v43, v39);
    }

    v45 = *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont);
    *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationFont) = v42;
    v37 = v40;

    *v29 = *&a3;
    *(v29 + 8) = a4 & 1;
    v46 = (v38[470] + v9);
    *v46 = v20;
    v46[1] = v21;
    v47 = *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextLine);
    *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextLine) = v37;

    v48 = *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextColor);
    *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextColor) = v26;
    v49 = v26;

    goto LABEL_24;
  }

  v27 = *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextBoundsSize);
  if (v27 != v20 || *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextBoundsSize + 8) != v21)
  {
    goto LABEL_20;
  }

  v32 = *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextColor);
  if (!v32)
  {
    goto LABEL_20;
  }

  sub_275E572B8(0, &qword_280A3BE68);
  v59 = a1;
  v33 = v26;
  v34 = v32;
  v35 = sub_275E61268();

  a1 = v59;
  v30 = &off_280A3B000;
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

  v36 = *(v9 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_lastDrawnAbbreviationTextLine);
  if (!v36)
  {
    goto LABEL_20;
  }

  v37 = v36;
LABEL_24:
  BoundsWithOptions = CTLineGetBoundsWithOptions(v37, 0);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  v54 = v19;
  BoundsWithOptions.origin.x = v19;
  BoundsWithOptions.origin.y = v61;
  BoundsWithOptions.size.width = v20;
  BoundsWithOptions.size.height = v21;
  v55 = CGRectGetWidth(BoundsWithOptions);
  CTLineGetPenOffsetForFlush(v37, 0.5, v55);
  v66.origin.x = v19;
  v66.origin.y = v61;
  v66.size.width = v20;
  v66.size.height = v21;
  MinY = CGRectGetMinY(v66);
  v67.origin.x = v19;
  v67.origin.y = v61;
  v67.size.width = v20;
  v67.size.height = v21;
  v56 = CGRectGetHeight(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  round(MinY + (v56 - CGRectGetHeight(v68)) * 0.5);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  CGRectGetMinY(v69);
  v70.origin.x = v54;
  v70.origin.y = v61;
  v70.size.width = v20;
  v70.size.height = v21;
  CGRectGetMinX(v70);
  CGRectGetHeight(*v60);
  v71.size.height = height;
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  CGRectGetHeight(v71);
  v57 = CGRectGetHeight(*v60);
  CGContextTranslateCTM(c, 0.0, v57);
  CGContextScaleCTM(c, 1.0, -1.0);
  sub_275E61228();
  CTLineDraw(v37, c);

  CGContextRestoreGState(c);
}

void sub_275E582D0(uint64_t a1, char a2, CGContextRef c, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  CGContextSaveGState(c);
  if (a2)
  {
    v69.origin.x = a4;
    v69.origin.y = a5;
    v69.size.width = a6;
    v69.size.height = a7;
    Width = CGRectGetWidth(v69);
    v70.origin.x = a4;
    v70.origin.y = a5;
    v70.size.width = a6;
    v70.size.height = a7;
    Height = CGRectGetHeight(v70);
    if (Height < Width)
    {
      Width = Height;
    }
  }

  else
  {
    Width = *&a1;
  }

  v17 = objc_opt_self();
  v18 = [v17 systemImageNameForSymbolImageIdentifier_];
  sub_275E611E8();

  v19 = sub_275E611B8();
  v20 = objc_opt_self();
  v21 = [v20 imageNamed_];

  if (!v21)
  {
    v22 = sub_275E611B8();
    v21 = [v20 systemImageNamed_];
  }

  v23 = [objc_opt_self() configurationWithPointSize:4 weight:Width];
  v24 = [v21 imageByApplyingSymbolConfiguration_];

  if (v24)
  {
    v64 = a4;
    v65 = a5;
    v66 = a6;
    v67 = a7;
    v25 = v24;
    [v25 size];
    v27 = v26;
    TSURectWithSize();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [v25 alignmentRectInsets];
    sub_275E59C2C(v29, v31, v33, v35, v36, v37);
    TSUCenterOfRect();
    TSUCenterOfRect();
    TSUSubtractPoints();
    v39 = v38;
    v41 = v40;
    if (a2)
    {
      TSUFitOrFillSizeInRect();
    }

    else
    {
      TSUCenterOfRect();
      TSURectWithCenterAndSize();
    }

    v51 = v42;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = CGRectGetWidth(*&v42) / v27;
    v56 = v39 * v55;
    v57 = v41 * v55;
    v71.origin.x = v51;
    v71.origin.y = v52;
    v71.size.width = v53;
    v71.size.height = v54;
    v72 = CGRectOffset(v71, v56, v57);
    v73 = CGRectIntegral(v72);
    x = v73.origin.x;
    y = v73.origin.y;
    v60 = v73.size.width;
    v61 = v73.size.height;
    if (*(v7 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_drawsInvisibleText) == 1)
    {
      v62 = [objc_opt_self() clearColor];
    }

    else
    {
      v63 = [v17 colorSetForSymbolTintColorIdentifier_];
      v62 = *&v63[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage];
    }

    v49 = [v62 CGColor];

    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = v60;
    v74.size.height = v61;
    CGContextBeginTransparencyLayerWithRect(c, v74, 0);
    UIGraphicsPushContext(c);
    [v25 drawInRect_];
    UIGraphicsPopContext();
    CGContextSetBlendMode(c, kCGBlendModeSourceIn);
    CGContextSetFillColorWithColor(c, v49);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = v60;
    v75.size.height = v61;
    CGContextFillRect(c, v75);
    CGContextEndTransparencyLayer(c);
    v50 = v25;
  }

  else
  {
    sub_275E612B8();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = sub_275E612A8();
    v48 = objc_opt_self();
    sub_275E61298();
    v49 = sub_275E611B8();

    sub_275E61298();
    v25 = sub_275E611B8();

    sub_275E61298();
    v50 = sub_275E611B8();

    [v48 handleFailureInFunction:v49 file:v25 lineNumber:461 isFatal:0 format:v50 args:v47];
  }

  CGContextRestoreGState(c);
}

double sub_275E588A0(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper_abbreviationText);
    v4 = sub_275E58F20(a1);
    v5 = [objc_opt_self() whiteColor];
    v6 = sub_275E592F4(v3, v2, v4, v5);

    BoundsWithOptions = CTLineGetBoundsWithOptions(v6, 0);
    width = BoundsWithOptions.size.width;
  }

  else
  {
    v9 = [objc_opt_self() systemImageNameForSymbolImageIdentifier_];
    sub_275E611E8();

    v10 = sub_275E611B8();
    v11 = objc_opt_self();
    v12 = [v11 imageNamed_];

    if (!v12)
    {
      v13 = sub_275E611B8();
      v12 = [v11 systemImageNamed_];
    }

    v14 = [objc_opt_self() configurationWithPointSize:4 weight:a1];
    v15 = [v12 imageByApplyingSymbolConfiguration_];

    if (v15)
    {
      [v15 size];
      width = v16;
    }

    else
    {
      return 0.0;
    }
  }

  return width;
}

id sub_275E58CBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_275E58D88(uint64_t a1)
{
  sub_275E611E8();
  sub_275E61308();
  sub_275E611F8();
  v2 = sub_275E61328();

  return sub_275E58E1C(a1, v2);
}

unint64_t sub_275E58E1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_275E611E8();
      v8 = v7;
      if (v6 == sub_275E611E8() && v8 == v9)
      {
        break;
      }

      v11 = sub_275E612E8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_275E58F20(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:a1 weight:*MEMORY[0x277D74410]];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (!v5)
  {
    sub_275E612B8();
    v8 = swift_allocObject();
    v8[2] = 8;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = 0;
    v9 = sub_275E612A8();
    v10 = objc_opt_self();
    sub_275E61298();
    v11 = sub_275E611B8();

    sub_275E61298();
    v7 = sub_275E611B8();

    sub_275E61298();
    v5 = sub_275E611B8();

    [v10 handleFailureInFunction:v11 file:v7 lineNumber:211 isFatal:0 format:v5 args:v9];
LABEL_6:

    goto LABEL_7;
  }

  v6 = [v2 fontWithDescriptor:v5 size:a1];
  if (!v6)
  {
    sub_275E612B8();
    v12 = swift_allocObject();
    v12[2] = 8;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
    v13 = sub_275E612A8();
    v14 = objc_opt_self();
    sub_275E61298();
    v11 = sub_275E611B8();

    sub_275E61298();
    v7 = sub_275E611B8();

    sub_275E61298();
    v15 = sub_275E611B8();

    [v14 handleFailureInFunction:v11 file:v7 lineNumber:212 isFatal:0 format:v15 args:v13];

    v5 = v15;
    goto LABEL_6;
  }

  v7 = v3;
  v3 = v6;
LABEL_7:

  return v3;
}

unint64_t sub_275E591EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_275E57300(&qword_280A3BEF0);
    v3 = sub_275E612C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_275E59BAC(v4, &v11);
      v5 = v11;
      result = sub_275E58D88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_275E59C1C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

CTLineRef sub_275E592F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_275E57300(&qword_280A3BED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275E7C480;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_275E572B8(0, &qword_280A3BED8);
  *(inited + 40) = a3;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 104) = sub_275E572B8(0, &qword_280A3BEE0);
  *(inited + 80) = a4;
  v10 = v7;
  v11 = a3;
  v12 = v9;
  v13 = a4;
  sub_275E591EC(inited);
  swift_setDeallocating();
  sub_275E57300(&qword_280A3BEE8);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v15 = sub_275E611B8();
  type metadata accessor for Key(0);
  sub_275E59C48(&qword_280A3BE40, type metadata accessor for Key);
  v16 = sub_275E611A8();

  v17 = [v14 initWithString:v15 attributes:v16];

  v18 = CTLineCreateWithAttributedString(v17);
  return v18;
}

unint64_t sub_275E594D4(uint64_t a1, unint64_t a2, void *a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_275E58F20(30.0);
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    v39 = v10;
    v38 = sub_275E592F4(a1, a2, [v10 fontWithSize_], a3);
  }

  else
  {
    v11 = v10;
    v12 = sub_275E592F4(a1, a2, v11, a3);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v12, 0);
    v13 = BoundsWithOptions.size.width <= a4 && BoundsWithOptions.size.height <= a5;
    v65 = v11;
    if (v13)
    {
      v40 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v40 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v40)
      {

        return v12;
      }

      if (BoundsWithOptions.size.width >= a4)
      {
        v38 = v12;
LABEL_32:

        return v38;
      }

      v41 = *MEMORY[0x277D740A8];
      v42 = *MEMORY[0x277D740C0];
      v43 = 30.0;
      v44 = v11;
      while (BoundsWithOptions.size.height < a5)
      {
        v43 = v43 + 1.0;
        v45 = [v11 fontWithSize_];

        v70[0] = v41;
        v70[4] = sub_275E572B8(0, &qword_280A3BED8);
        v71[0] = v42;
        v70[1] = v45;
        v71[4] = sub_275E572B8(0, &qword_280A3BEE0);
        v71[1] = a3;
        sub_275E57300(&qword_280A3BEF0);
        v46 = sub_275E612C8();
        v47 = v45;
        v48 = a3;
        v44 = v47;
        v49 = v41;
        v50 = v42;
        sub_275E59BAC(v70, &v68);
        v51 = v68;
        result = sub_275E58D88(v68);
        if (v52)
        {
          goto LABEL_36;
        }

        *(v46 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v46[6] + 8 * result) = v51;
        result = sub_275E59C1C(v69, (v46[7] + 32 * result));
        v53 = v46[2];
        v27 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v27)
        {
          goto LABEL_37;
        }

        v46[2] = v54;
        sub_275E59BAC(v71, &v68);
        v55 = v68;
        result = sub_275E58D88(v68);
        if (v56)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        *(v46 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v46[6] + 8 * result) = v55;
        result = sub_275E59C1C(v69, (v46[7] + 32 * result));
        v57 = v46[2];
        v27 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v27)
        {
          goto LABEL_37;
        }

        v46[2] = v58;
        sub_275E57300(&qword_280A3BEE8);
        swift_arrayDestroy();
        v59 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v60 = sub_275E611B8();
        type metadata accessor for Key(0);
        sub_275E59C48(&qword_280A3BE40, type metadata accessor for Key);
        v61 = sub_275E611A8();

        v62 = [v59 initWithString:v60 attributes:v61];

        v11 = v65;
        v63 = v62;
        v38 = CTLineCreateWithAttributedString(v63);

        BoundsWithOptions = CTLineGetBoundsWithOptions(v38, 0);
        v12 = v38;
        if (v64 >= a4)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v14 = *MEMORY[0x277D740A8];
      v15 = *MEMORY[0x277D740C0];
      v16 = 30.0;
      v17 = v11;
      while (v16 > 1.0)
      {
        v16 = v16 + -1.0;
        v18 = [v11 fontWithSize_];

        v66[0] = v14;
        v66[4] = sub_275E572B8(0, &qword_280A3BED8);
        v67[0] = v15;
        v66[1] = v18;
        v67[4] = sub_275E572B8(0, &qword_280A3BEE0);
        v67[1] = a3;
        sub_275E57300(&qword_280A3BEF0);
        v19 = sub_275E612C8();
        v17 = v18;
        v20 = v14;
        v21 = v15;
        v22 = a3;
        sub_275E59BAC(v66, &v68);
        v23 = v68;
        result = sub_275E58D88(v68);
        if (v25)
        {
          goto LABEL_34;
        }

        *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v19[6] + 8 * result) = v23;
        result = sub_275E59C1C(v69, (v19[7] + 32 * result));
        v26 = v19[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_35;
        }

        v19[2] = v28;
        sub_275E59BAC(v67, &v68);
        v29 = v68;
        result = sub_275E58D88(v68);
        if (v30)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        *(v19[6] + 8 * result) = v29;
        result = sub_275E59C1C(v69, (v19[7] + 32 * result));
        v31 = v19[2];
        v27 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v27)
        {
          goto LABEL_35;
        }

        v19[2] = v32;
        sub_275E57300(&qword_280A3BEE8);
        swift_arrayDestroy();
        v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v34 = sub_275E611B8();
        type metadata accessor for Key(0);
        sub_275E59C48(&qword_280A3BE40, type metadata accessor for Key);
        v35 = sub_275E611A8();

        v36 = [v33 initWithString:v34 attributes:v35];

        v11 = v65;
        v37 = v36;
        v38 = CTLineCreateWithAttributedString(v37);

        BoundsWithOptions = CTLineGetBoundsWithOptions(v38, 0);
        v12 = v38;
        if (v73.size.width <= a4)
        {
          v12 = v38;
          if (v73.size.height <= a5)
          {
            goto LABEL_32;
          }
        }
      }
    }

    return v12;
  }

  return v38;
}

uint64_t sub_275E59BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275E57300(&qword_280A3BEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_275E59C1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_275E59C48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_275E59E08()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlide setTemplateSlide:resetTemplateSlideBackgroundObjects:]", "[KNSlide setTemplateSlide:resetTemplateSlideBackgroundObjects:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m", 138);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 138, 1, "resetTemplateSlideBackgroundObjects will not work with different numbers of template background objects");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E59EAC()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlide setTemplateSlide:resetTemplateSlideBackgroundObjects:]", "[KNSlide setTemplateSlide:resetTemplateSlideBackgroundObjects:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m", 134);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 134, 1, "resetTemplateSlideBackgroundObjects will not work when templates don't have the same value for slideObjectsLayerWithTemplate");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E59F50()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlide infosToDisplay]", "[KNSlide infosToDisplay]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m", 421);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 421, 1, "template slide must not be nil in infosToDisplay");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E59FF4(void *a1, const char *a2, uint64_t a3)
{
  v13 = objc_msgSend_objectUUID(a1, a2, a3);
  TSUSetCrashReporterInfo();

  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNSlide p_checkTemplateSlide]", "[KNSlide p_checkTemplateSlide]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m", 624, v13);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlide.m");
  v11 = objc_msgSend_objectUUID(a1, v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v6, v8, 624, 1, "template slide must not be nil for slide %@", v11);

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A140()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNLiveVideoInfo setStyle:]", "[KNLiveVideoInfo setStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfo.m", 333, "mediaStyle");
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 333, 1, "invalid nil value for '%{public}s'", "mediaStyle");

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_275E5A1F4()
{
  v2 = sub_275D7B770();
  objc_msgSend_stringWithUTF8String_(v2, v3, "[KNLiveVideoInfo intValueForProperty:]");
  objc_claimAutoreleasedReturnValue();
  v4 = sub_275D7B794();
  v6 = objc_msgSend_stringWithUTF8String_(v4, v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfo.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  v12 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v12, v10, v11);
}

uint64_t sub_275E5A278()
{
  v2 = sub_275D7B770();
  objc_msgSend_stringWithUTF8String_(v2, v3, "[KNLiveVideoInfo intValueForProperty:]");
  objc_claimAutoreleasedReturnValue();
  v4 = sub_275D7B794();
  v6 = objc_msgSend_stringWithUTF8String_(v4, v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfo.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  v12 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v12, v10, v11);
}

uint64_t sub_275E5A2FC()
{
  v2 = sub_275D7B770();
  objc_msgSend_stringWithUTF8String_(v2, v3, "[KNLiveVideoInfo intValueForProperty:]");
  objc_claimAutoreleasedReturnValue();
  v4 = sub_275D7B794();
  v6 = objc_msgSend_stringWithUTF8String_(v4, v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfo.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  v12 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v12, v10, v11);
}

uint64_t sub_275E5A380()
{
  v2 = sub_275D7B770();
  objc_msgSend_stringWithUTF8String_(v2, v3, "[KNLiveVideoInfo intValueForProperty:]");
  objc_claimAutoreleasedReturnValue();
  v4 = sub_275D7B794();
  v6 = objc_msgSend_stringWithUTF8String_(v4, v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoInfo.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  v12 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v12, v10, v11);
}

void sub_275E5A440()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]", "+[KNSlideTree slideNodeDepthMapToCleanUpSlideNodes:atDepths:minimumValidDepth:canExceedSlideTreeMaxDepth:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 135);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 135, 1, "The input depth should be less than or equal to the maximum slide depth limit, input depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A4E4()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree addSlideNode:atDepth:dolcContext:]", "[KNSlideTree addSlideNode:atDepth:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 283);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 283, 1, "Depth cannot be more than one greater than the last slide node's depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A588()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree addSlideNode:atDepth:dolcContext:]", "[KNSlideTree addSlideNode:atDepth:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 286);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 286, 1, "Assigning a slide node to an invalid depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A62C(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = objc_msgSend_objectUUIDPath(0, a2, a3);
  TSUSetCrashReporterInfo();

  v3 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNSlideTree addSlideNode:atDepth:dolcContext:]", "[KNSlideTree addSlideNode:atDepth:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 276, 0, v12);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  v10 = objc_msgSend_objectUUIDPath(0, v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v11, v5, v7, 276, 1, "First slide node, %{public}@ %{public}@, must be at depth one.", 0, v10);

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A700()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 317);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 317, 1, "The slide nodes inserted count must match the count of the indexes we insert them at.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A7A4()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 325);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 325, 1, "Slides must be inserted within the bounds of the deck.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A848()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 341);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 341, 1, "The slide nodes changing depth count must match the count of the depths we set them to.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A8EC()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "[KNSlideTree insertSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:dolcContext:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 348);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 348, 1, "Assigning a slide node to an invalid depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5A990()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 378);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 378, 1, "The slide nodes moved count must match the count of the indexes we move them from.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5AA34()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 379);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 379, 1, "The slide nodes moved count must match the count of the indexes we move them to.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5AAD8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_objectUUIDPath(a1, a2, a3);
  v24 = objc_msgSend_objectUUIDPath(a2, v9, v10);
  v23 = v8;
  TSUSetCrashReporterInfo();

  v11 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 393, a1, v23, a3, a4, a2, v24);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  v18 = objc_msgSend_objectUUIDPath(a1, v16, v17);
  v21 = objc_msgSend_objectUUIDPath(a2, v19, v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v13, v15, 393, 1, "Expected to move slide node %{public}@ %{public}@ from index %ld to index %ld, and instead got: %{public}@ %{public}@", a1, v18, a3, a4, a2, v21);

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5ABFC()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 389);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 389, 1, "To index invalid; slides must be moved within the bounds of the deck.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5ACA0()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 388);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 388, 1, "From index invalid; slides must be within the bounds of the deck.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5AD44()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 414);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 414, 1, "The slide nodes changing depth count must match the count of the depths we set them to.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5ADE8()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree moveSlideNodes:fromIndexes:toIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 421);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 421, 1, "Assigning a slide node to an invalid depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5AE8C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 453);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 453, 1, "The slide nodes being removed count must match the count of the indexes we are removing.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5AF30(void *a1, char *a2, uint64_t a3)
{
  v6 = objc_msgSend_objectUUIDPath(a1, a2, a3);
  v22 = objc_msgSend_objectUUIDPath(a2, v7, v8);
  v21 = v6;
  TSUSetCrashReporterInfo();

  v9 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 462, a1, v21, a3, a2, v22);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  v16 = objc_msgSend_objectUUIDPath(a1, v14, v15);
  v19 = objc_msgSend_objectUUIDPath(a2, v17, v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v20, v11, v13, 462, 1, "Expected to remove slide node %{public}@ %{public}@ at target index %ld, and instead got: %{public}@ %{public}@ at the target index.", a1, v16, a3, a2, v19);

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5B048()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 480);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 480, 1, "The slide nodes changing depth count must match the count of the depths we set them to.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5B0EC()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "[KNSlideTree removeSlideNodes:atIndexes:slideNodesChangingDepths:depthsOfSlideNodesChangingDepths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 487);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 487, 1, "Assigning a slide node to an invalid depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5B190()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree addSlideNodeForDocumentUpgrade:atDepth:]", "[KNSlideTree addSlideNodeForDocumentUpgrade:atDepth:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 971);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 971, 1, "Depth cannot be more than one greater than the last slide node's depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5B234()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNSlideTree addSlideNodeForDocumentUpgrade:atDepth:]", "[KNSlideTree addSlideNodeForDocumentUpgrade:atDepth:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m", 974);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideTree.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 974, 1, "Assigning a slide node to an invalid depth.");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5B2D8()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNTheme p_findFallbackDefaultTemplateSlide]", "[KNTheme p_findFallbackDefaultTemplateSlide]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m", 2220);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 2220, 1, "Keynote theme has no template slides");

  TSUCrashBreakpoint();
  abort();
}

void sub_275E5B37C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNTheme p_findDefaultTemplateSlideWithoutLoadingSlides]", "[KNTheme p_findDefaultTemplateSlideWithoutLoadingSlides]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m", 2294);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNTheme.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 2294, 1, "A document must have at least one template slide.");

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_275E5B69C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Color::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5B76C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::PathSourceArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5B83C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DE4BEC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5B90C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DE63AC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5B9DC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5BAAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DE8D8C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5BB7C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5BC4C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DE951C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5BD1C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DEB0D8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5BDEC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5BEBC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5BF8C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DF0EE8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5C05C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DE7FF4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5C12C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DE78B4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5C1FC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::GeometryArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5C2CC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::GuideArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5C39C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::ShapeStylePropertiesArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5C46C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DF0688(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5C53C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DF1570(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5C60C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Size::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5C6DC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::DataReference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5C7AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DF6B10(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5C87C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E1A5DC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5C94C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5CA1C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCH::ChartUIState::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5CAEC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::SelectionPathArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5CBBC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275DFF5C8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5CC8C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::IndexSet::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5CD5C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v11 = a2;
  while (1)
  {
    if (sub_275E221E8(a3, &v11))
    {
      return v11;
    }

    TagFallback = (v11 + 1);
    v6 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*TagFallback << 7);
    v6 = v7 - 128;
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v11 + 2);
LABEL_6:
      v11 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v11, (v7 - 128));
    v11 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    v6 = v9;
LABEL_7:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_275E5CE60(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::ThemeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5CF30(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E019E8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D000(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E03BD0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5D0D0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSA::DocumentArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5D1A0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5D270(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D340(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E068F0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5D410(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Range::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D4E0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E07E90(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5D5B0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Date::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D680(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E0D7BC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D750(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E0DD34(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D820(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E0EDF0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D8F0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E0FDC0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5D9C0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E10660(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5DA90(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E10C28(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5DB60(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E11170(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5DC30(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E123F4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5DD00(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::TextualAttachmentArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5DDD0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E13D04(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E5DEA0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::AddIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5DF70(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::IdPlacementOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E5E040(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::RemoveIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5E110(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E193B8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_275E5E1E0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E18CA8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void sub_275E5E2B0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v106 = a2;
  v5 = sub_275E221E8(a3, &v106);
  v6 = v106;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = (v6 + 1);
      LODWORD(v8) = *v6;
      if (*v6 < 0)
      {
        v8 = (v8 + (*v7 << 7) - 128);
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v6, v8);
          v106 = TagFallback;
          if (!TagFallback)
          {
            return;
          }

          v7 = TagFallback;
          goto LABEL_7;
        }

        v7 = (v6 + 2);
      }

      v106 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_294;
          }

          sub_275E2736C(*(a1 + 16) | 1);
          if (v9)
          {
            sub_275E27360();
          }

          goto LABEL_164;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_294;
          }

          sub_275E2736C(*(a1 + 16) | 2);
          if (v44)
          {
            sub_275E27360();
          }

          goto LABEL_164;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_294;
          }

          *(a1 + 16) |= 0x40u;
          v30 = *(a1 + 88);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              sub_275E27354(v31);
            }

            v32 = MEMORY[0x277C8EF70]();
            LODWORD(v30) = v32;
            *(a1 + 88) = v32;
            v7 = v106;
          }

          v33 = sub_275E5D1A0(a3, v30, v7);
          goto LABEL_206;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_294;
          }

          *(a1 + 20) |= 0x800u;
          v48 = (v7 + 1);
          LODWORD(v47) = *v7;
          if ((v47 & 0x80) == 0)
          {
            goto LABEL_173;
          }

          sub_275E272E0();
          if (v50 < 0)
          {
            v92 = google::protobuf::internal::VarintParseSlow64(v49, v47);
            v106 = v92;
            *(a1 + 384) = v93;
            if (!v92)
            {
              return;
            }
          }

          else
          {
            v48 = (v49 + 2);
LABEL_173:
            v106 = v48;
            *(a1 + 384) = v47;
          }

          goto LABEL_292;
        case 0xBu:
          if (v8 != 89)
          {
            goto LABEL_294;
          }

          *(a1 + 136) = sub_275E2730C(v7, *(a1 + 16) | 0x1000u);
          goto LABEL_291;
        case 0xCu:
          if (v8 != 97)
          {
            goto LABEL_294;
          }

          *(a1 + 144) = sub_275E2730C(v7, *(a1 + 16) | 0x2000u);
          goto LABEL_291;
        case 0xDu:
          if (v8 != 105)
          {
            goto LABEL_294;
          }

          *(a1 + 152) = sub_275E2730C(v7, *(a1 + 16) | 0x4000u);
          goto LABEL_291;
        case 0xEu:
          if (v8 != 113)
          {
            goto LABEL_294;
          }

          *(a1 + 160) = sub_275E2730C(v7, *(a1 + 16) | 0x8000u);
          goto LABEL_291;
        case 0xFu:
          sub_275E273B0();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 168) = sub_275E2730C(v52, *(a1 + 16) | 0x10000u);
          goto LABEL_291;
        case 0x10u:
          sub_275E273A4();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 176) = sub_275E2730C(v51, *(a1 + 16) | 0x20000u);
          goto LABEL_291;
        case 0x11u:
          if (v8 != 137)
          {
            goto LABEL_294;
          }

          *(a1 + 184) = sub_275E2730C(v7, *(a1 + 16) | 0x40000u);
          goto LABEL_291;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_294;
          }

          sub_275E27338(*(a1 + 20) | 0x1000);
          if (v34 < 0 && (sub_275E27270(), v37 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v36, v35);
            sub_275E272C0();
            *(a1 + 388) = v88;
            if (!v89)
            {
              return;
            }
          }

          else
          {
            sub_275E272D0();
            *(a1 + 388) = v38;
          }

          goto LABEL_292;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_294;
          }

          sub_275E2736C(*(a1 + 16) | 4);
          if (v27)
          {
            sub_275E27360();
          }

          goto LABEL_164;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_294;
          }

          sub_275E2736C(*(a1 + 16) | 8);
          if (v23)
          {
            sub_275E27360();
          }

          goto LABEL_164;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_294;
          }

          sub_275E2736C(*(a1 + 16) | 0x10);
          if (v45)
          {
            sub_275E27360();
          }

          goto LABEL_164;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_294;
          }

          sub_275E2736C(*(a1 + 16) | 0x20);
          if (v46)
          {
            sub_275E27360();
          }

LABEL_164:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v33 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_206;
        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_294;
          }

          *(a1 + 16) |= 0x80u;
          v20 = *(a1 + 96);
          if (v20)
          {
            goto LABEL_205;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            sub_275E27354(v55);
          }

          v56 = MEMORY[0x277C8F010]();
          LODWORD(v20) = v56;
          *(a1 + 96) = v56;
          goto LABEL_204;
        case 0x18u:
          if (v8 != 194)
          {
            goto LABEL_294;
          }

          *(a1 + 16) |= 0x100u;
          v20 = *(a1 + 104);
          if (v20)
          {
            goto LABEL_205;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            sub_275E27354(v53);
          }

          v54 = MEMORY[0x277C8F010]();
          LODWORD(v20) = v54;
          *(a1 + 104) = v54;
          goto LABEL_204;
        case 0x19u:
          if (v8 != 202)
          {
            goto LABEL_294;
          }

          *(a1 + 16) |= 0x200u;
          v20 = *(a1 + 112);
          if (v20)
          {
            goto LABEL_205;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            sub_275E27354(v21);
          }

          v22 = MEMORY[0x277C8F010]();
          LODWORD(v20) = v22;
          *(a1 + 112) = v22;
          goto LABEL_204;
        case 0x1Au:
          if (v8 != 210)
          {
            goto LABEL_294;
          }

          *(a1 + 16) |= 0x400u;
          v20 = *(a1 + 120);
          if (v20)
          {
            goto LABEL_205;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            sub_275E27354(v28);
          }

          v29 = MEMORY[0x277C8F010]();
          LODWORD(v20) = v29;
          *(a1 + 120) = v29;
          goto LABEL_204;
        case 0x1Bu:
          if (v8 != 217)
          {
            goto LABEL_294;
          }

          *(a1 + 192) = sub_275E2730C(v7, *(a1 + 16) | 0x80000u);
          goto LABEL_291;
        case 0x1Cu:
          if (v8 != 225)
          {
            goto LABEL_294;
          }

          *(a1 + 200) = sub_275E2730C(v7, *(a1 + 16) | 0x100000u);
          goto LABEL_291;
        case 0x1Du:
          if (v8 != 233)
          {
            goto LABEL_294;
          }

          *(a1 + 208) = sub_275E2730C(v7, *(a1 + 16) | 0x200000u);
          goto LABEL_291;
        case 0x1Eu:
          if (v8 != 241)
          {
            goto LABEL_294;
          }

          *(a1 + 216) = sub_275E2730C(v7, *(a1 + 16) | 0x400000u);
          goto LABEL_291;
        case 0x1Fu:
          if (v8 != 249)
          {
            goto LABEL_294;
          }

          *(a1 + 224) = sub_275E2730C(v7, *(a1 + 16) | 0x800000u);
          goto LABEL_291;
        case 0x20u:
          if (v8 != 1)
          {
            goto LABEL_294;
          }

          *(a1 + 232) = sub_275E2730C(v7, *(a1 + 16) | 0x1000000u);
          goto LABEL_291;
        case 0x21u:
          if (v8 != 9)
          {
            goto LABEL_294;
          }

          *(a1 + 240) = sub_275E2730C(v7, *(a1 + 16) | 0x2000000u);
          goto LABEL_291;
        case 0x22u:
          if (v8 != 17)
          {
            goto LABEL_294;
          }

          *(a1 + 248) = sub_275E2730C(v7, *(a1 + 16) | 0x4000000u);
          goto LABEL_291;
        case 0x23u:
          if (v8 != 25)
          {
            goto LABEL_294;
          }

          *(a1 + 256) = sub_275E2730C(v7, *(a1 + 16) | 0x8000000u);
          goto LABEL_291;
        case 0x24u:
          if (v8 != 33)
          {
            goto LABEL_294;
          }

          *(a1 + 264) = sub_275E2730C(v7, *(a1 + 16) | 0x10000000u);
          goto LABEL_291;
        case 0x25u:
          if (v8 != 41)
          {
            goto LABEL_294;
          }

          *(a1 + 272) = sub_275E2730C(v7, *(a1 + 16) | 0x20000000u);
          goto LABEL_291;
        case 0x26u:
          if (v8 != 49)
          {
            goto LABEL_294;
          }

          *(a1 + 280) = sub_275E2730C(v7, *(a1 + 16) | 0x40000000u);
          goto LABEL_291;
        case 0x27u:
          if (v8 != 57)
          {
            goto LABEL_294;
          }

          *(a1 + 288) = sub_275E2730C(v7, *(a1 + 16) | 0x80000000);
          goto LABEL_291;
        case 0x28u:
          if (v8 != 65)
          {
            goto LABEL_294;
          }

          *(a1 + 296) = sub_275E272B4(v7, *(a1 + 20) | 1u);
          goto LABEL_291;
        case 0x29u:
          if (v8 != 73)
          {
            goto LABEL_294;
          }

          *(a1 + 304) = sub_275E272B4(v7, *(a1 + 20) | 2u);
          goto LABEL_291;
        case 0x2Au:
          if (v8 != 81)
          {
            goto LABEL_294;
          }

          *(a1 + 312) = sub_275E272B4(v7, *(a1 + 20) | 4u);
          goto LABEL_291;
        case 0x2Bu:
          if (v8 != 89)
          {
            goto LABEL_294;
          }

          *(a1 + 320) = sub_275E272B4(v7, *(a1 + 20) | 8u);
          goto LABEL_291;
        case 0x2Cu:
          if (v8 != 97)
          {
            goto LABEL_294;
          }

          *(a1 + 328) = sub_275E272B4(v7, *(a1 + 20) | 0x10u);
          goto LABEL_291;
        case 0x2Du:
          if (v8 != 105)
          {
            goto LABEL_294;
          }

          *(a1 + 336) = sub_275E272B4(v7, *(a1 + 20) | 0x20u);
          goto LABEL_291;
        case 0x2Eu:
          if (v8 != 113)
          {
            goto LABEL_294;
          }

          *(a1 + 344) = sub_275E272B4(v7, *(a1 + 20) | 0x40u);
          goto LABEL_291;
        case 0x2Fu:
          sub_275E273B0();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 352) = sub_275E272B4(v26, *(a1 + 20) | 0x80u);
          goto LABEL_291;
        case 0x30u:
          sub_275E273A4();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 360) = sub_275E272B4(v43, *(a1 + 20) | 0x100u);
          goto LABEL_291;
        case 0x31u:
          if (v8 != 137)
          {
            goto LABEL_294;
          }

          *(a1 + 368) = sub_275E272B4(v7, *(a1 + 20) | 0x200u);
          goto LABEL_291;
        case 0x32u:
          if (v8 != 145)
          {
            goto LABEL_294;
          }

          *(a1 + 376) = sub_275E272B4(v7, *(a1 + 20) | 0x400u);
          goto LABEL_291;
        case 0x33u:
          if (v8 != 153)
          {
            goto LABEL_294;
          }

          *(a1 + 392) = sub_275E272B4(v7, *(a1 + 20) | 0x10000u);
          goto LABEL_291;
        case 0x34u:
          if (v8 != 161)
          {
            goto LABEL_294;
          }

          *(a1 + 400) = sub_275E272B4(v7, *(a1 + 20) | 0x20000u);
          goto LABEL_291;
        case 0x35u:
          if (v8 != 169)
          {
            goto LABEL_294;
          }

          *(a1 + 408) = sub_275E272B4(v7, *(a1 + 20) | 0x40000u);
          goto LABEL_291;
        case 0x36u:
          if (v8 != 177)
          {
            goto LABEL_294;
          }

          *(a1 + 416) = sub_275E272B4(v7, *(a1 + 20) | 0x80000u);
          goto LABEL_291;
        case 0x37u:
          if (v8 != 185)
          {
            goto LABEL_294;
          }

          *(a1 + 424) = sub_275E272B4(v7, *(a1 + 20) | 0x100000u);
          goto LABEL_291;
        case 0x38u:
          if (v8 != 193)
          {
            goto LABEL_294;
          }

          *(a1 + 432) = sub_275E272B4(v7, *(a1 + 20) | 0x200000u);
          goto LABEL_291;
        case 0x39u:
          if (v8 != 201)
          {
            goto LABEL_294;
          }

          *(a1 + 440) = sub_275E272B4(v7, *(a1 + 20) | 0x400000u);
          goto LABEL_291;
        case 0x3Au:
          if (v8 != 209)
          {
            goto LABEL_294;
          }

          *(a1 + 448) = sub_275E272B4(v7, *(a1 + 20) | 0x800000u);
          goto LABEL_291;
        case 0x3Bu:
          if (v8 != 217)
          {
            goto LABEL_294;
          }

          *(a1 + 456) = sub_275E272B4(v7, *(a1 + 20) | 0x1000000u);
          goto LABEL_291;
        case 0x3Cu:
          if (v8 != 225)
          {
            goto LABEL_294;
          }

          *(a1 + 464) = sub_275E272B4(v7, *(a1 + 20) | 0x2000000u);
          goto LABEL_291;
        case 0x3Du:
          if (v8 != 233)
          {
            goto LABEL_294;
          }

          *(a1 + 472) = sub_275E272B4(v7, *(a1 + 20) | 0x4000000u);
          goto LABEL_291;
        case 0x3Eu:
          if (v8 != 241)
          {
            goto LABEL_294;
          }

          *(a1 + 480) = sub_275E272B4(v7, *(a1 + 20) | 0x8000000u);
          goto LABEL_291;
        case 0x3Fu:
          if (v8 != 249)
          {
            goto LABEL_294;
          }

          *(a1 + 488) = sub_275E272B4(v7, *(a1 + 20) | 0x10000000u);
          goto LABEL_291;
        case 0x40u:
          if (v8 != 1)
          {
            goto LABEL_294;
          }

          *(a1 + 496) = sub_275E272B4(v7, *(a1 + 20) | 0x20000000u);
          goto LABEL_291;
        case 0x41u:
          if (v8 != 9)
          {
            goto LABEL_294;
          }

          *(a1 + 504) = sub_275E272B4(v7, *(a1 + 20) | 0x40000000u);
          goto LABEL_291;
        case 0x42u:
          if (v8 != 17)
          {
            goto LABEL_294;
          }

          *(a1 + 512) = sub_275E272B4(v7, *(a1 + 20) | 0x80000000);
          goto LABEL_291;
        case 0x43u:
          if (v8 != 25)
          {
            goto LABEL_294;
          }

          *(a1 + 520) = sub_275E272A8(v7, *(a1 + 24) | 1u);
          goto LABEL_291;
        case 0x44u:
          if (v8 != 33)
          {
            goto LABEL_294;
          }

          *(a1 + 528) = sub_275E272A8(v7, *(a1 + 24) | 2u);
          goto LABEL_291;
        case 0x45u:
          if (v8 != 41)
          {
            goto LABEL_294;
          }

          *(a1 + 536) = sub_275E272A8(v7, *(a1 + 24) | 4u);
          goto LABEL_291;
        case 0x46u:
          if (v8 != 49)
          {
            goto LABEL_294;
          }

          *(a1 + 544) = sub_275E272A8(v7, *(a1 + 24) | 8u);
          goto LABEL_291;
        case 0x47u:
          if (v8 != 57)
          {
            goto LABEL_294;
          }

          *(a1 + 552) = sub_275E272A8(v7, *(a1 + 24) | 0x10u);
          goto LABEL_291;
        case 0x48u:
          if (v8 != 65)
          {
            goto LABEL_294;
          }

          *(a1 + 560) = sub_275E272A8(v7, *(a1 + 24) | 0x20u);
          goto LABEL_291;
        case 0x49u:
          if (v8 != 72)
          {
            goto LABEL_294;
          }

          sub_275E27338(*(a1 + 20) | 0x2000);
          if (v13 < 0 && (sub_275E27270(), v16 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v15, v14);
            sub_275E272C0();
            *(a1 + 389) = v86;
            if (!v87)
            {
              return;
            }
          }

          else
          {
            sub_275E272D0();
            *(a1 + 389) = v17;
          }

          goto LABEL_292;
        case 0x4Au:
          if (v8 != 80)
          {
            goto LABEL_294;
          }

          sub_275E27338(*(a1 + 20) | 0x4000);
          if (v65 < 0 && (sub_275E27270(), v68 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v67, v66);
            sub_275E272C0();
            *(a1 + 390) = v98;
            if (!v99)
            {
              return;
            }
          }

          else
          {
            sub_275E272D0();
            *(a1 + 390) = v69;
          }

          goto LABEL_292;
        case 0x4Bu:
          if (v8 != 88)
          {
            goto LABEL_294;
          }

          sub_275E27338(*(a1 + 20) | 0x8000);
          if (v70 < 0 && (sub_275E27270(), v73 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v72, v71);
            sub_275E272C0();
            *(a1 + 391) = v100;
            if (!v101)
            {
              return;
            }
          }

          else
          {
            sub_275E272D0();
            *(a1 + 391) = v74;
          }

          goto LABEL_292;
        case 0x4Cu:
          if (v8 != 96)
          {
            goto LABEL_294;
          }

          *(a1 + 24) |= 0x40u;
          v39 = (v7 + 1);
          LODWORD(v40) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_141;
          }

          sub_275E272E0();
          if (v42 < 0)
          {
            v90 = google::protobuf::internal::VarintParseSlow32(v41, v40);
            v106 = v90;
            *(a1 + 568) = v91;
            if (!v90)
            {
              return;
            }
          }

          else
          {
            v39 = (v41 + 2);
LABEL_141:
            v106 = v39;
            *(a1 + 568) = v40;
          }

          goto LABEL_292;
        case 0x4Du:
          if (v8 != 104)
          {
            goto LABEL_294;
          }

          *(a1 + 24) |= 0x80u;
          if ((*v7 & 0x8000000000000000) != 0 && (sub_275E27270(), v78 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v77, v76);
            sub_275E272C0();
            *(a1 + 572) = v102;
            if (!v103)
            {
              return;
            }
          }

          else
          {
            sub_275E272D0();
            *(a1 + 572) = v79;
          }

          goto LABEL_292;
        case 0x4Eu:
          if (v8 != 112)
          {
            goto LABEL_294;
          }

          *(a1 + 24) |= 0x100u;
          if ((*v7 & 0x8000000000000000) != 0 && (sub_275E27270(), v63 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v62, v61);
            sub_275E272C0();
            *(a1 + 573) = v96;
            if (!v97)
            {
              return;
            }
          }

          else
          {
            sub_275E272D0();
            *(a1 + 573) = v64;
          }

          goto LABEL_292;
        case 0x4Fu:
          sub_275E273B0();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 576) = sub_275E272A8(v18, *(a1 + 24) | 0x200u);
          goto LABEL_291;
        case 0x50u:
          sub_275E273A4();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 584) = sub_275E272A8(v19, *(a1 + 24) | 0x400u);
          goto LABEL_291;
        case 0x51u:
          if (v8 != 137)
          {
            goto LABEL_294;
          }

          *(a1 + 592) = sub_275E272A8(v7, *(a1 + 24) | 0x800u);
          goto LABEL_291;
        case 0x52u:
          if (v8 != 145)
          {
            goto LABEL_294;
          }

          *(a1 + 600) = sub_275E272A8(v7, *(a1 + 24) | 0x1000u);
          goto LABEL_291;
        case 0x53u:
          if (v8 != 153)
          {
            goto LABEL_294;
          }

          *(a1 + 608) = sub_275E272A8(v7, *(a1 + 24) | 0x2000u);
          goto LABEL_291;
        case 0x54u:
          if (v8 != 161)
          {
            goto LABEL_294;
          }

          *(a1 + 616) = sub_275E272A8(v7, *(a1 + 24) | 0x4000u);
          goto LABEL_291;
        case 0x55u:
          if (v8 != 170)
          {
            goto LABEL_294;
          }

          *(a1 + 16) |= 0x800u;
          v20 = *(a1 + 128);
          if (v20)
          {
            goto LABEL_205;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            sub_275E27354(v24);
          }

          v25 = MEMORY[0x277C8F010]();
          LODWORD(v20) = v25;
          *(a1 + 128) = v25;
LABEL_204:
          v7 = v106;
LABEL_205:
          v33 = sub_275E5B69C(a3, v20, v7);
          goto LABEL_206;
        case 0x56u:
          if (v8 != 177)
          {
            goto LABEL_294;
          }

          *(a1 + 624) = sub_275E272A8(v7, *(a1 + 24) | 0x8000u);
          goto LABEL_291;
        case 0x57u:
          if (v8 != 185)
          {
            goto LABEL_294;
          }

          *(a1 + 632) = sub_275E272A8(v7, *(a1 + 24) | 0x10000u);
          goto LABEL_291;
        case 0x58u:
          if (v8 != 193)
          {
            goto LABEL_294;
          }

          *(a1 + 640) = sub_275E272A8(v7, *(a1 + 24) | 0x20000u);
          goto LABEL_291;
        case 0x59u:
          if (v8 != 201)
          {
            goto LABEL_294;
          }

          *(a1 + 648) = sub_275E272A8(v7, *(a1 + 24) | 0x40000u);
          goto LABEL_291;
        case 0x5Au:
          if (v8 != 209)
          {
            goto LABEL_294;
          }

          *(a1 + 656) = sub_275E272A8(v7, *(a1 + 24) | 0x80000u);
          goto LABEL_291;
        case 0x5Bu:
          if (v8 != 217)
          {
            goto LABEL_294;
          }

          *(a1 + 664) = sub_275E272A8(v7, *(a1 + 24) | 0x100000u);
          goto LABEL_291;
        case 0x5Cu:
          if (v8 != 225)
          {
            goto LABEL_294;
          }

          *(a1 + 672) = sub_275E272A8(v7, *(a1 + 24) | 0x200000u);
          goto LABEL_291;
        case 0x5Du:
          if (v8 != 233)
          {
            goto LABEL_294;
          }

          *(a1 + 680) = sub_275E272A8(v7, *(a1 + 24) | 0x400000u);
          goto LABEL_291;
        case 0x5Eu:
          if (v8 != 241)
          {
            goto LABEL_294;
          }

          *(a1 + 688) = sub_275E272A8(v7, *(a1 + 24) | 0x800000u);
          goto LABEL_291;
        case 0x5Fu:
          if (v8 != 249)
          {
            goto LABEL_294;
          }

          *(a1 + 696) = sub_275E272A8(v7, *(a1 + 24) | 0x1000000u);
          goto LABEL_291;
        case 0x60u:
          if (v8 != 1)
          {
            goto LABEL_294;
          }

          *(a1 + 704) = sub_275E272A8(v7, *(a1 + 24) | 0x2000000u);
          goto LABEL_291;
        case 0x61u:
          if (v8 != 9)
          {
            goto LABEL_294;
          }

          *(a1 + 712) = sub_275E272A8(v7, *(a1 + 24) | 0x4000000u);
          goto LABEL_291;
        case 0x62u:
          if (v8 != 17)
          {
            goto LABEL_294;
          }

          *(a1 + 720) = sub_275E272A8(v7, *(a1 + 24) | 0x8000000u);
          goto LABEL_291;
        case 0x63u:
          if (v8 != 25)
          {
            goto LABEL_294;
          }

          *(a1 + 728) = sub_275E272A8(v7, *(a1 + 24) | 0x10000000u);
          goto LABEL_291;
        case 0x64u:
          if (v8 != 33)
          {
            goto LABEL_294;
          }

          *(a1 + 736) = sub_275E272A8(v7, *(a1 + 24) | 0x20000000u);
          goto LABEL_291;
        case 0x65u:
          if (v8 != 41)
          {
            goto LABEL_294;
          }

          *(a1 + 744) = sub_275E272A8(v7, *(a1 + 24) | 0x40000000u);
          goto LABEL_291;
        case 0x66u:
          if (v8 != 49)
          {
            goto LABEL_294;
          }

          *(a1 + 752) = sub_275E272A8(v7, *(a1 + 24) | 0x80000000);
          goto LABEL_291;
        case 0x67u:
          if (v8 != 56)
          {
            goto LABEL_294;
          }

          *(a1 + 28) |= 0x20u;
          v81 = (v7 + 1);
          LODWORD(v80) = *v7;
          if ((v80 & 0x80) == 0)
          {
            goto LABEL_276;
          }

          sub_275E272E0();
          if (v83 < 0)
          {
            v104 = google::protobuf::internal::VarintParseSlow64(v82, v80);
            v106 = v104;
            *(a1 + 800) = v105;
            if (!v104)
            {
              return;
            }
          }

          else
          {
            v81 = (v82 + 2);
LABEL_276:
            v106 = v81;
            *(a1 + 800) = v80;
          }

          goto LABEL_292;
        case 0x68u:
          if (v8 != 65)
          {
            goto LABEL_294;
          }

          *(a1 + 760) = sub_275E27348(v7, *(a1 + 28) | 1u);
          goto LABEL_291;
        case 0x69u:
          if (v8 != 73)
          {
            goto LABEL_294;
          }

          *(a1 + 768) = sub_275E27348(v7, *(a1 + 28) | 2u);
          goto LABEL_291;
        case 0x6Au:
          if (v8 != 81)
          {
            goto LABEL_294;
          }

          *(a1 + 776) = sub_275E27348(v7, *(a1 + 28) | 4u);
          goto LABEL_291;
        case 0x6Bu:
          if (v8 != 89)
          {
            goto LABEL_294;
          }

          *(a1 + 784) = sub_275E27348(v7, *(a1 + 28) | 8u);
          goto LABEL_291;
        case 0x6Cu:
          if (v8 != 97)
          {
            goto LABEL_294;
          }

          *(a1 + 792) = sub_275E27348(v7, *(a1 + 28) | 0x10u);
          goto LABEL_291;
        case 0x6Du:
          if (v8 != 105)
          {
            goto LABEL_294;
          }

          *(a1 + 808) = sub_275E27348(v7, *(a1 + 28) | 0x80u);
          goto LABEL_291;
        case 0x6Eu:
          if (v8 != 113)
          {
            goto LABEL_294;
          }

          *(a1 + 816) = sub_275E27348(v7, *(a1 + 28) | 0x100u);
          goto LABEL_291;
        case 0x6Fu:
          sub_275E273B0();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 824) = sub_275E27348(v75, *(a1 + 28) | 0x200u);
          goto LABEL_291;
        case 0x70u:
          sub_275E273A4();
          if (!v85)
          {
            goto LABEL_294;
          }

          *(a1 + 832) = sub_275E27348(v12, *(a1 + 28) | 0x400u);
LABEL_291:
          v106 = v11;
          goto LABEL_292;
        case 0x71u:
          if (v8 != 136)
          {
            goto LABEL_294;
          }

          *(a1 + 28) |= 0x40u;
          v58 = (v7 + 1);
          LODWORD(v57) = *v7;
          if ((v57 & 0x80) == 0)
          {
            goto LABEL_214;
          }

          sub_275E272E0();
          if (v60 < 0)
          {
            v94 = google::protobuf::internal::VarintParseSlow64(v59, v57);
            v106 = v94;
            *(a1 + 804) = v95;
            if (!v94)
            {
              return;
            }
          }

          else
          {
            v58 = (v59 + 2);
LABEL_214:
            v106 = v58;
            *(a1 + 804) = v57;
          }

          goto LABEL_292;
        default:
LABEL_294:
          if (v8)
          {
            v85 = (v8 & 7) == 4;
          }

          else
          {
            v85 = 1;
          }

          if (v85)
          {
            *(a3 + 80) = v8 - 1;
            return;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v33 = google::protobuf::internal::UnknownFieldParse();
LABEL_206:
          v106 = v33;
          if (!v33)
          {
            return;
          }

LABEL_292:
          v84 = sub_275E221E8(a3, &v106);
          v6 = v106;
          if (v84)
          {
            return;
          }

          break;
      }
    }
  }
}

void sub_275E5F44C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!SizeFallback)
    {
      return;
    }

    v6 = SizeFallback;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 == v11)
  {
    sub_275E5E2B0(a2, v6, a1);
    if (v12)
    {
      ++*(a1 + 88);
      if (!*(a1 + 80))
      {
        v13 = *(a1 + 28) + v10 - v9;
        *(a1 + 28) = v13;
        *a1 = *(a1 + 8) + (v13 & (v13 >> 31));
      }
    }
  }
}

uint64_t sub_275E5F51C()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F558()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F594()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F5D0()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F60C()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F648()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F684()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F6C0()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F6FC()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return sub_275E2738C(v2);
}

uint64_t sub_275E5F730()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F76C()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F7A8()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F7E4()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_275E5F820()
{
  sub_275E272F4();
  if (v1)
  {
    v2 = sub_275E27300(v1);
  }

  else
  {
    v2 = sub_275E22260(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_275E5F85C(int *a1, void *a2)
{
  if (*a1 > 0 && !*(*a2 - 8))
  {
    operator delete((*a2 - 8));
  }
}

uint64_t sub_275E605F8()
{
  v2 = sub_275D7B770();
  v4 = objc_msgSend_stringWithUTF8String_(v2, v3, "[KNBuildAttributeValue initWithIntegerValue:]");
  v6 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  return objc_msgSend_logBacktraceThrottled(*(v1 + 336), v10, v11);
}

uint64_t sub_275E60674()
{
  v2 = sub_275D7B770();
  v4 = objc_msgSend_stringWithUTF8String_(v2, v3, "[KNBuildAttributeValue initWithIntegerValue:]");
  v6 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  return objc_msgSend_logBacktraceThrottled(*(v1 + 336), v10, v11);
}

uint64_t sub_275E606F0()
{
  v2 = sub_275D7B770();
  v4 = objc_msgSend_stringWithUTF8String_(v2, v3, "[KNBuildAttributeValue integerValue]");
  v6 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
  v7 = sub_275D7B784();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v8, v9);

  v12 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v12, v10, v11);
}

void sub_275E6082C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]", "[KNBuildAttributeTuple initWithBuild:chunk:property:value:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m", 41, "context");
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 41, 1, "invalid nil value for '%{public}s'", "context");

  TSUCrashBreakpoint();
  abort();
}

google::protobuf::internal *sub_275E60944(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E3DCCC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E60A14(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecStringArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E60AE4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecFillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E60BB4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecIntegerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E60C84(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecDoubleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E60D54(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecBoolArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_275E60E24(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecColorArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_275E60EF4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_275E3E394(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_275E60FC4(int a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!a1 || (a1 & 7) == 4)
  {
    result = 0;
    *(a2 + 80) = a1 - 1;
  }

  else
  {
    if ((*a3 & 1) == 0)
    {
      sub_275E22260(a3);
    }

    v6 = google::protobuf::internal::UnknownFieldParse();
    *a4 = v6;
    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t __C()
{
  return MEMORY[0x2821EB470]();
}

{
  return MEMORY[0x2821E9630]();
}

{
  return MEMORY[0x2821E96F8]();
}

uint64_t String()
{
  return MEMORY[0x2821EB0D0]();
}

{
  return MEMORY[0x2821EB0D8]();
}

{
  return MEMORY[0x2821EB0E0]();
}

{
  return MEMORY[0x2821EB0E8]();
}

{
  return MEMORY[0x2821EB100]();
}

{
  return MEMORY[0x2821EB108]();
}

{
  return MEMORY[0x2821EB110]();
}

{
  return MEMORY[0x2821EB118]();
}

{
  return MEMORY[0x2821EB120]();
}

{
  return MEMORY[0x2821EB128]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}