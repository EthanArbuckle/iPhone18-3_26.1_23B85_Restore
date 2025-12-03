@interface TSDGLTextureLoader
+ (id)p_textureInfoFromCGImage:(CGImage *)image generateMipmaps:(BOOL)mipmaps;
+ (id)textureWithContentsOfFile:(id)file generateMipmaps:(BOOL)mipmaps error:(id *)error;
@end

@implementation TSDGLTextureLoader

+ (id)p_textureInfoFromCGImage:(CGImage *)image generateMipmaps:(BOOL)mipmaps
{
  textures = 0;
  if (!image)
  {
    mipmapsCopy = 0;
    v17 = 0;
    Height = 0;
    Width = 0;
LABEL_12:
    v18 = [TSDGLTextureInfo alloc];
    return objc_msgSend_initWithName_target_width_height_containsMipmaps_(v18, v19, textures, v17, Width, Height, mipmapsCopy);
  }

  mipmapsCopy = mipmaps;
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  result = 0;
  if (Width && Height)
  {
    if (Width >> 31)
    {
      sub_276808C64();
    }

    else
    {
      if (!(Height >> 31))
      {
        pixels = malloc_type_malloc(4 * Width * Height, 0x100004077774924uLL);
        ColorSpace = CGImageGetColorSpace(image);
        v11 = CGBitmapContextCreate(pixels, Width, Height, 8uLL, 4 * Width, ColorSpace, 1u);
        if (v11)
        {
          v12 = v11;
          CGContextScaleCTM(v11, 1.0, -1.0);
          CGContextTranslateCTM(v12, 0.0, -Height);
          TSURectWithSize();
          x = v21.origin.x;
          y = v21.origin.y;
          v15 = v21.size.width;
          v16 = v21.size.height;
          CGContextClearRect(v12, v21);
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = v15;
          v22.size.height = v16;
          CGContextDrawImage(v12, v22, image);
          CGContextRelease(v12);
          glGenTextures(1, &textures);
          glBindTexture(0xDE1u, textures);
          glTexParameteri(0xDE1u, 0x2801u, 9729);
          glTexParameteri(0xDE1u, 0x2800u, 9729);
          glTexParameteri(0xDE1u, 0x2802u, 33071);
          glTexParameteri(0xDE1u, 0x2803u, 33071);
          glTexImage2D(0xDE1u, 0, 6408, Width, Height, 0, 0x1908u, 0x1401u, pixels);
          free(pixels);
          if (mipmapsCopy)
          {
            glGenerateMipmap(0xDE1u);
          }

          v17 = 3553;
          glBindTexture(0xDE1u, 0);
        }

        else
        {
          mipmapsCopy = 0;
          v17 = 0;
        }

        goto LABEL_12;
      }

      sub_276808BE8();
    }

    return 0;
  }

  return result;
}

+ (id)textureWithContentsOfFile:(id)file generateMipmaps:(BOOL)mipmaps error:(id *)error
{
  v6 = objc_msgSend_imageWithContentsOfFile_(MEMORY[0x277D811F8], a2, file, mipmaps, error);
  v9 = objc_msgSend_CGImage(v6, v7, v8);

  return MEMORY[0x2821F9670](self, sel_p_textureInfoFromCGImage_generateMipmaps_, v9);
}

@end