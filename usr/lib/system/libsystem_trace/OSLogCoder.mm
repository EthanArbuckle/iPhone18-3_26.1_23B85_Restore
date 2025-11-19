@interface OSLogCoder
- (void)_initBlob;
- (void)appendBytes:(const void *)a3 length:(unint64_t)a4;
- (void)setPublic;
@end

@implementation OSLogCoder

- (void)_initBlob
{
  if ((*self->_fmt_cmd & 7) != 0)
  {
    if (privacy_flags2opt[*self->_fmt_cmd & 7] <= self->_privacy_level)
    {
      if (*self->_fmt_cmd)
      {
        ob_priv = self->_ob_priv;
      }

      else
      {
        ob_priv = self->_ob_pub;
      }

      self->_ob = ob_priv;
      if (!ob_priv)
      {
        goto LABEL_12;
      }
    }

    else if (self->_mask)
    {
      self->_ob_mask.var0.ob_b = self->_maskbuf;
      ob_priv = &self->_ob_mask;
      *&self->_ob_mask.ob_len = 0x8000000000;
      self->_ob_mask.ob_maxsize = 0;
      self->_ob_mask.ob_flags = 0;
      self->_ob_mask.ob_binary = 1;
      self->_ob = &self->_ob_mask;
      self->_maxsz = 0x10000;
    }

    else
    {
      ob_priv = self->_ob;
      if (!ob_priv)
      {
        goto LABEL_12;
      }
    }

    self->_offset = ob_priv->ob_len;
LABEL_12:
    self->_initialized = 1;
    return;
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
}

- (void)appendBytes:(const void *)a3 length:(unint64_t)a4
{
  fmt_cmd = self->_fmt_cmd;
  if ((*fmt_cmd & 7) == 0)
  {
    *fmt_cmd |= 1u;
  }

  if (!self->_initialized)
  {
    [(OSLogCoder *)self _initBlob];
  }

  ob = self->_ob;
  if (ob)
  {
    written = self->_written;
    maxsz = self->_maxsz;
    v11 = written + a4;
    if (__CFADD__(written, a4) || (!(v11 >> 16) ? (v12 = v11 >= maxsz) : (v12 = 1), v12))
    {
      self->_truncated = 1;
      LOWORD(v11) = maxsz;
    }

    if ((ob->ob_flags & 2) == 0)
    {
      v13 = v11 - written;
      ob_len = ob->ob_len;
      if (v13 > ob->ob_size - ob_len - !ob->ob_binary)
      {
        os_trace_blob_add_slow(ob, a3, v13);
      }

      else
      {
        memcpy(&ob->var0.ob_b[ob_len], a3, v13);
        v15 = ob->ob_len + v13;
        ob->ob_len = v15;
        if (!ob->ob_binary)
        {
          ob->var0.ob_b[v15] = 0;
        }
      }
    }

    self->_written = v11;
  }
}

- (void)setPublic
{
  fmt_cmd = self->_fmt_cmd;
  if (*fmt_cmd)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Cannot force Public over Private";
    __break(1u);
  }

  else
  {
    *fmt_cmd |= 2u;
  }
}

@end